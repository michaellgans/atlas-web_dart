// Task 2 - Add/Sub

int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  int addResult = add(a, b);
  int subResult = sub(a, b);
  return ("Add $a + $b = $addResult" + "\n" + "Sub $a - $b = $subResult");
}
