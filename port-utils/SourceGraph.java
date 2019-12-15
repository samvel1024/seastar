

import java.io.*;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

class SourceGraph {

  final List<String> formats = Arrays.asList(".c", ".cc", ".cpp", ".h", ".hpp", ".hh");
  final Map<String, Set<String>> graph = new HashMap<>();

  interface Action {
    void apply(String from, Optional<String> to, int level);
  }

  private void doFilter(String curr, Set<String> v) {
    v.add(curr);
    for (String next : graph.get(curr)) {
      System.out.printf("\t\"%s\" -> \"%s\"\n", curr, next);
      if (!v.contains(next))
        doFilter(next, v);
    }
  }

  public void print(String from, Optional<String> to, int level) {
    System.out.printf("%d %s->%s\n", level, from, to.orElse("NULL"));
  }

  private Optional<String> linkedCC(String file) {
    String[] patterns = new String[]{".h", ".hh", ".hpp"};
    for (String p : patterns) {
      if (!file.endsWith(p)) continue;
      int idx = file.lastIndexOf(p);
      return Optional.of(file.substring(0, idx) + ".cc");
    }
    return Optional.empty();
  }


  public void filter(String root, Action action, boolean linkCC, Collection<String> exclude) {
    class Pair {
      String val;
      int lev;

      public Pair(String val, int lev) {
        this.val = val;
        this.lev = lev;
      }
    }
    Queue<Pair> q = new LinkedList<>();
    Set<String> v = new HashSet<>();
    v.add(root);
    q.add(new Pair(root, 0));
    if (!exclude.contains(root)){
      action.apply(root, Optional.empty(), 0);
    }
    while (!q.isEmpty()) {
      Pair curr = q.poll();
      List<String> includes = new ArrayList<>(graph.get(curr.val));
      // Artificially add an edge between file.h -> file.cc
      if (linkCC)
        linkedCC(curr.val)
          .filter(graph::containsKey)
          .ifPresent(includes::add);
      Collections.sort(includes);
      for (String next : includes) {
        if (exclude.contains(next))
          continue;
        action.apply(curr.val, Optional.of(next), curr.lev);
        if (!v.contains(next)) {
          q.add(new Pair(next, curr.lev + 1));
          v.add(next);
        }
      }
      if (includes.isEmpty()) {
        action.apply(curr.val, Optional.empty(), curr.lev);
      }
    }

  }

  public void readGraph(InputStream in) {

    Scanner sc = new Scanner(in);
    Pattern pattern = Pattern.compile("\\s*\"(.+)\"\\s->\\s\"(.+)\"");
    while (sc.hasNext()) {
      String line = sc.nextLine();
      if (!line.contains("->")) continue;
      Matcher m = pattern.matcher(line);
      if (m.find()) {
        String from = m.group(1);
        String to = m.group(2);
        graph.putIfAbsent(from, new HashSet<>());
        graph.putIfAbsent(to, new HashSet<>());
        graph.get(from).add(to);
      }
    }

  }


  public class PortTask implements Runnable, AutoCloseable {

    final PrintStream out;
    final List<String> endpoints;
    final Set<String> exclude;

    public PortTask(List<String> endpoints, String script, Collection<String> exclude) throws FileNotFoundException {
      this.endpoints = endpoints;
      this.exclude = exclude.stream()
        .flatMap(x -> formats.stream().map(f -> x + f))
        .collect(Collectors.toCollection(HashSet::new));

      out = new PrintStream(new BufferedOutputStream(new FileOutputStream(new File(script))));
    }

    private void move(String file, String targetVar) {
      String parent = new File(file).getParentFile().toString();
      out.printf("mkdir -p $%s/%s && cp $FROM/%s $%s/%s\n", targetVar, parent, file, targetVar, file);
    }

    private void replaceInDir(String from, String to, String targetDirVar) {
      from = from.replace("/", "\\/");
      to = to.replace("/", "\\/");
      String find = String.format("find $%s -type f", targetDirVar);
      String sed = String.format("xargs -n1 -IFILE sed -i '' -e 's/%s/%s/g' FILE", from, to);
      out.println(find + " | " + sed);
    }

    @Override
    public void run() {
      Set<String> headers = new HashSet<>();
      {
        endpoints.forEach(x -> filter(x, (from, to, level) -> {
          if (from.endsWith(".h") || from.endsWith(".hpp"))
            headers.add(from);
          to.filter(x1 -> !endpoints.contains(x1))
            .ifPresent(headers::add);
        }, false, exclude));
      }

      Set<String> sources = new HashSet<>();
      {
        endpoints.forEach(x -> filter(x, (from, to, level) -> {
          sources.add(from);
          to.ifPresent(sources::add);
        }, true, exclude));
      }
      sources.removeAll(headers);
      sources.removeAll(endpoints);

      System.out.println();
      System.out.print("\033[0;32m#SOURCE FILES\033[0m\n");
      sources.forEach(x -> System.out.println("src/parquet/" + x));
      System.out.print("\033[0;32m#HEADER FILES\033[0m\n");
      headers.forEach(x -> System.out.println("include/seastar/parquet/" + x));

      //Start writing the script

      //Copy the files
      out.println("#!/bin/bash");
      out.println("set -e");
      sources.forEach(x -> this.move(x, "SOURCES"));
      headers.forEach(x -> this.move(x, "HEADERS"));

      //Run sed to replace includes that will refer to headers in seastar/parquet/...
      headers.forEach(x -> {
        String from = String.format("#include \"%s\"", x);
        String to = String.format("#include <seastar/parquet/%s>", x);
        replaceInDir(from, to, "SOURCES");
        replaceInDir(from, to, "HEADERS");
      });

      //Run sed to replace include that will refer to headers in src/parquet/...
      replaceInDir("#include \"parquet/", "#include \"parquet/parquet/", "SOURCES");
      replaceInDir("#include \"arrow/", "#include \"parquet/arrow/", "SOURCES");
      replaceInDir("#include \"generated/", "#include \"parquet/generated/", "SOURCES");

    }

    @Override
    public void close() {
      out.flush();
      out.close();
    }
  }


  public static void main(String[] args) throws FileNotFoundException {
    SourceGraph sg = new SourceGraph();
    sg.readGraph(new BufferedInputStream(new FileInputStream(new File(args[0]))));

    Scanner sc = new Scanner(System.in);
    while (true) {
//      try {
        System.out.print("\033[0;32m>>>\033[0m");
        if (!sc.hasNext()) break;
        List<String> command = Arrays.asList(sc.nextLine().split(" "));
        switch (command.get(0)) {
          case "filterWithCC":
            sg.filter(command.get(1), sg::print, true, Collections.emptyList());
            break;
          case "filter":
            sg.filter(command.get(1), sg::print, false, Collections.emptyList());
            break;
          case "port":
            int idx = command.indexOf("--exclude");

            List<String> endpoints = command.subList(1, idx == -1 ? command.size() : idx);
            List<String> exclude = command.subList(idx + 1, idx == -1 ? 0 : command.size());
            try (PortTask t = sg.new PortTask(endpoints, "port.sh", exclude)) {
              t.run();
            } catch (FileNotFoundException e) {
              e.printStackTrace();
            }
            break;

        }
//      } catch (RuntimeException e) {
//        e.printStackTrace();
//      }
    }

  }
}
