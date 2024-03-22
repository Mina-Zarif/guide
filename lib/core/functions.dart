String? emailValidation(String? email) {
  if (email == null || email.isEmpty) {
    return 'Please enter your email';
  } else if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email)) {
    return 'Please enter valid email';
  }
  return null;
}

String? passwordValidation(String? password) {
  if (password == null || password.isEmpty) {
    return 'Please enter your password';
  }
  return null;
}
