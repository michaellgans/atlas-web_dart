// Task 3 - Greet User

// Imports
import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String? userData = await fetchUserData();
    return userData;
  } catch (error) {
    return "error caught: $error";
  }
}

Future<String> loginUser() async {
  try {
    bool access = await checkCredentials();
    if (access) {
      // Fetch the entire JSON object
      String greeting = await greetUser();

      // Turn JSON into a MAP
      Map<String, dynamic> userInfo = jsonDecode(greeting);

      // Return just the username
      String username = userInfo['username'];

      return "There is a user: true" + "\n" + "Hello $username";
    } else {
      return "There is a user: false\nWrong credentials";
    }
  } catch (error) {
    return "error caught: $error";
  }
}
