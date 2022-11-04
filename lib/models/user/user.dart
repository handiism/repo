import 'dart:convert';

LoginResponseModel loginResponseModel(String str) =>
    LoginResponseModel.fromJson(jsonDecode(str));

class LoginResponseModel {
  LoginResponseModel({
    required this.status,
    required this.data,
  });
  late final String status;
  late final Data data;

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    // ignore: no_leading_underscores_for_local_identifiers
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.user,
    required this.accessToken,
  });
  late final User user;
  late final String accessToken;

  Data.fromJson(Map<String, dynamic> json) {
    user = User.fromJson(json['user']);
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    // ignore: no_leading_underscores_for_local_identifiers
    final _data = <String, dynamic>{};
    _data['user'] = user.toJson();
    _data['accessToken'] = accessToken;
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.email,
    required this.username,
    required this.fullName,
    required this.role,
  });
  late final int id;
  late final String email;
  late final String username;
  late final String fullName;
  late final int role;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    username = json['username'];
    fullName = json['fullName'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    // ignore: no_leading_underscores_for_local_identifiers
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['email'] = email;
    _data['username'] = username;
    _data['fullName'] = fullName;
    _data['role'] = role;
    return _data;
  }
}
