// Task 4 - Outer Inner

void outer(String name, String id) {
  String inner() {
    RegExp findLastInitial = RegExp(r'\b[A-Z]');
    RegExpMatch? lastInitialMatch = findLastInitial.firstMatch(name.split(" ").last);
    String lastInitial = lastInitialMatch?.group(0) ?? "";

    RegExp findFristName = RegExp(r'\b\w+');
    RegExpMatch? firstNameMatch = findFristName.firstMatch(name);
    String firstName = firstNameMatch?.group(0) ?? "";
    return "Hello Agent $lastInitial.$firstName your id is $id";
  }
  print(inner());
}
