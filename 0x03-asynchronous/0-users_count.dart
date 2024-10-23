// Task 0 - Users Count

// Imports
import '0-util.dart';

Future<void> usersCount() async {
  // print("Fetching data...?");
  int countOfUsers = await fetchUsersCount();
  print(countOfUsers);
}