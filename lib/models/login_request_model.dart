class LoginRequestModel {
  LoginRequestModel({
    required this.emailUsername,
    required this.password,
  });
  late final String emailUsername;
  late final String password;

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    emailUsername = json['emailUsername'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    // ignore: no_leading_underscores_for_local_identifiers
    final _data = <String, dynamic>{};
    _data['emailUsername'] = emailUsername;
    _data['password'] = password;
    return _data;
  }
}
