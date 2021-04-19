class FormsValidators {
  static String email(String value) {
    if (value.contains("@")) {
      return null;
    } else {
      return "Email inválido";
    }
  }

  static String password(String value) {
    if (value.length >= 6) {
      return null;
    } else {
      return "A senha deve ter no mínimo 6 caracteres";
    }
  }
}