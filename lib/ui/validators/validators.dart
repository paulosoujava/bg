class FormsValidators {
  static bool email(String value) {
    return (value.contains("@"));
  }

  static bool password(String value) {
    return (value.length >= 6);
  }
}