class Profile {
  final String name;
  final String email;
  final String password;

  Profile({this.name, this.email, this.password});

  Profile.fromJson(Map<String, String> json)
      : name = json['name'],
        email = json['email'],
        password = json['password'];

  Map<String, String> toJson() => {
        'name': name,
        'email': email,
        'password': password,
      };
}
