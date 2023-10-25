enum TypeSelect { phone, email, text, dateTime }

/// [keyboardType = phone] validate [phone]
bool isCheckEmail(String value) {
  bool isCheckEmail = true;
  final RegExp regex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)| (\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  if (!regex.hasMatch(value)) {
    // not valid email
    isCheckEmail = false;
  }

  return isCheckEmail;
}

/// [keyboardType = phone] validate [email]
bool isCheckPhoneNumber(String value) {
  bool isCheckPhone = true;
  final RegExp regex =
      RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)');

  if (value.isEmpty || value.length > 11) {
    isCheckPhone = false;
  } else if (!regex.hasMatch(value)) {
    isCheckPhone = false;
  }

  return isCheckPhone;
}
