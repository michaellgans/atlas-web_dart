// Task 9 - Palindrome

bool isPalindrome(String s) {
  String reversedString = s.split("").reversed.join();
  if (s.length < 3) {
    return false;
  } else {
    return s == reversedString;
  }
}
