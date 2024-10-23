// Task 6 - inheritance

import "6-password.dart";

class User extends Password {
  // Properties
  int? id;
  String? name;
  int? age;
  double? height;

  // Constructor
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    String? user_password,
  }) : super(password: user_password ?? "");

  // Method to convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})";
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  String? get user_password {
    return password;
  }

  void set user_password(String? user_password) {
    password = user_password;
  }
}
