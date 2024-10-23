// Task 1 - Get User ID

// Imports
import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  // Fetch the entire JSON object
  String userInfo = await fetchUserData();

  // Turn JSON into a MAP
  Map<String, dynamic> userInfoMap = jsonDecode(userInfo);

  // Return just the ID
  return userInfoMap['id'];
}
