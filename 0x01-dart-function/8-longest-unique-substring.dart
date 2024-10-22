// Task 8 - Longest Unique Substring

String longestUniqueSubstring(String str) {
  String longestSubString = "";
  String subString = "";
  Set<String> checkedCharacters = {};

  // Iterate through the string
  for (int x = 0; x < str.length; x++) {
    String char = str[x];

    // If you haven't seen that character before
    // add it to the substring and checked characters
    if (!checkedCharacters.contains(char)) {
      subString += char;
      checkedCharacters.add(char);
    // If you HAVE seen it, save substring as longest substring.
    } else {
      if (subString.length > longestSubString.length) {
        longestSubString = subString;
      }

      // Start at the next index and keep going
      int newStart = subString.indexOf(char) + 1;
      subString = subString.substring(newStart) + char;
      checkedCharacters = subString.split("").toSet();
    }

    // Make sure to return the longest one.
    if (subString.length > longestSubString.length) {
      longestSubString = subString;
    }
  };

  return longestSubString;
}
