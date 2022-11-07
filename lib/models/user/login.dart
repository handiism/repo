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

class UserLoginResponseWrapper {
  UserLoginResponseWrapper({
    required this.user,
  });

  UserLoginResponse user;

  factory UserLoginResponseWrapper.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseWrapper(
        user: UserLoginResponse.fromJson(json['user']),
      );

  Map<String, dynamic> toJson() => {
        'user': user.toJson(),
      };
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
