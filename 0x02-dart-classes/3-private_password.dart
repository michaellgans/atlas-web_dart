// Task 3 - Private Password

class Password {
  // Properties
  String _password;

  // Constructor
  Password(this._password);

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
