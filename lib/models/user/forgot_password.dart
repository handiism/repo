import 'dart:convert';

Forgotpass forgotpassFromJson(String str) =>
    Forgotpass.fromJson(json.decode(str));

String forgotpassToJson(Forgotpass data) => json.encode(data.toJson());

class Forgotpass {
  Forgotpass({
    required this.status,
    required this.message,
    required this.data,
  });

  String status;
  String message;
  String data;

  factory Forgotpass.fromJson(Map<String, dynamic> json) => Forgotpass(
        status: json["status"],
        message: json["message"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data,
      };
}

class ForgotPassRequest {
  ForgotPassRequest({
    required this.email,
  });
  late final String email;

  ForgotPassRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['email'] = email;
    return data;
  }
}
