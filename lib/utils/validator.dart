extension Validator on String{

  bool isValidEmail() {
    return RegExp("").hasMatch(this);
  }

  bool isValidPhoneNumber() {
    return RegExp("").hasMatch(this);
  }

}