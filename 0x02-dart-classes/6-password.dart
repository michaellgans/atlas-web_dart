// Task 4 - Mutable

class Password {
  // Properties
  String _password;

  // Getter
  String get password => _password;

  // Setter
  set password(String newPassword) {
    if (newPassword.length >= 8 && newPassword.length <= 16) {
      _password = newPassword;
    }

    if (RegExp(r'[A-Z]').hasMatch(newPassword)) {
      _password = newPassword;
    }

    if (RegExp(r'[a-z]').hasMatch(newPassword)) {
      _password = newPassword;
    }

    if (RegExp(r'[0-9]').hasMatch(newPassword)) {
      _password = newPassword;
    }
  }

  // Constructor
  Password({required String password}) : _password = password;

  // Methods
  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    if (!RegExp(r'[A-Z]').hasMatch(_password)) {
      return false;
    }

    if (!RegExp(r'[a-z]').hasMatch(_password)) {
      return false;
    }

    if (!RegExp(r'[0-9]').hasMatch(_password)) {
      return false;
    }

    return true;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
