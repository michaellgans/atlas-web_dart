// Task 10 - Longest Palindrome

String longestPalindrome(String s) {
  String longestString = "";

  bool isPalindrome(String s) {
    String reversedString = s.split("").reversed.join();
    if (s.length < 3) {
      return false;
    } else {
      return s == reversedString;
    }
  }

  for (int x = 0; x < s.length; x++) {
    for (int y = x + 1; y <= s.length; y++) {
      String subString = s.substring(x, y);

      if (isPalindrome(subString) && subString.length > longestString.length) {
        longestString = subString;
      }
    }
  }

  if (longestString == "") {
    return "none";
  }

  return longestString;
}