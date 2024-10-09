// Task 5 - Assertion

void main(List<String> args) {
  String input = args[0];
  int grade = int.parse(input);
  assert(grade >= 80, 'Assertion failed: "The score must be bigger or equal to 80"');
  print(input);
}
