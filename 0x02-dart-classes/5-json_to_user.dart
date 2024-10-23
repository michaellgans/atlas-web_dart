// Task 5 - JSON to User

class User {
  // Properties
  int id;
  String name;
  int age;
  double height;

  // Constructor
  User({
    required this.id,
    this.name = "",
    this.age = 0,
    this.height = 0.0,
  });

  // Methods
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height
    };
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height)";
  }
}
