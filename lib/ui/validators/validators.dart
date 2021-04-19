class FormsValidators {
  static String email(String value) {
    return (value.contains("@")) ? "email inválido": null;
  }

  static String password(String value) {
    return (value.length >= 6)? "limite inválido, min 6": null;
  }

  static String repPassword(String p1, String p2) {
    return (p1 == p2)? "senhas não conferem": null;
  }
}