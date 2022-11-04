import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
UserLoginResponse userLoginResponseFromJson(String str) =>
    UserLoginResponse.fromJson(json.decode(str));
String userLoginResponseToJson(UserLoginResponse data) =>
    json.encode(data.toJson());

User welcomeFromJson(String str) => User.fromJson(json.decode(str));

String welcomeToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.id,
    required this.email,
    required this.username,
    required this.fullName,
    required this.idRole,
    required this.idDivision,
    this.password,
    this.accessToken,
  });

  int id;
  String email;
  String username;
  String fullName;
  int idRole;
  String? password;
  int idDivision;
  String? accessToken;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        fullName: json['fullName'],
        idRole: json['id_role'],
        idDivision: json['id_division'],
        password: json['password'],
        accessToken: json['accessToken'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'fullName': fullName,
        'id_role': idRole,
        'password': password,
        'id_division': idDivision,
        'accessToken': accessToken,
      };
}

class UserLoginRequest {
  UserLoginRequest({
    required this.emailUsername,
    required this.password,
  });
  late final String emailUsername;
  late final String password;

  UserLoginRequest.fromJson(Map<String, dynamic> json) {
    emailUsername = json['emailUsername'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['emailUsername'] = emailUsername;
    data['password'] = password;
    return data;
  }
}

class UserLoginResponse {
  UserLoginResponse({
    required this.id,
    required this.email,
    required this.username,
    required this.fullName,
    required this.idRole,
    required this.idDivision,
    required this.accessToken,
  });

  int id;
  String email;
  String username;
  String fullName;
  int idRole;
  int idDivision;
  String accessToken;

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      UserLoginResponse(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        fullName: json['fullName'],
        idRole: json['id_role'],
        idDivision: json['id_division'],
        accessToken: json['accessToken'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'fullName': fullName,
        'id_role': idRole,
        'id_division': idDivision,
        'accessToken': accessToken,
      };
}
