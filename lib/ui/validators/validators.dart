class FormsValidators {
  static String email(String email) {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)
     ?"": "Este email é inválido";
  }

  static String password(String value) {
    return (value.length < 6)? "O limite de SENHA é de: 6 caracteres, min.": "";
  }

  static String name(String value) {
    return (value.length < 3)? "O limite de NOME é de 3 caracteres, min.": "";
  }

  static String repPassword(String p1, String p2) {
    return (p1 != p2)? "As SENHAS não conferem": "";
  }
}