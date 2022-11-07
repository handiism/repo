class UserRegisterRequest {
  UserRegisterRequest({
    required this.username,
    required this.fullName,
    required this.email,
    required this.password,
    this.idDivision,
  });

  String username;
  String fullName;
  String email;
  String password;
  int? idDivision;

  factory UserRegisterRequest.fromJson(Map<String, dynamic> json) =>
      UserRegisterRequest(
        username: json['username'],
        fullName: json['fullName'],
        email: json['email'],
        password: json['password'],
        idDivision: json['id_division'],
      );

  Map<String, dynamic> toJson() => {
        'username': username,
        'fullName': fullName,
        'email': email,
        'password': password,
        'id_division': idDivision,
      };
}
