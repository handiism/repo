import 'package:get/get.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/models/user/index.dart';
import 'package:repo/core/utils/base_response.dart';
import 'dart:convert';
import 'package:http/http.dart' as http ;

class UserService extends GetConnect implements GetxService {
  Future<BaseResponse<UserLoginResponseWrapper>> login(
      UserLoginRequest body) async {
    String uri = ApiRoutesRepo.baseUrl + ApiRoutesRepo.login;
    Response response = await post(uri, body.toJson(),
        headers: {'Content-Type': 'application/json; charset=UTF-8'});

    if (response.statusCode != 200) {
      // ignore: avoid_print
      print(response.statusCode);
    }

    return BaseResponse<UserLoginResponseWrapper>.fromJson(
        response.body, (data) => UserLoginResponseWrapper.fromJson(data));
  }

  Future<ForgotPasswordResponse> forgotPassword(
      String uri, ForgotPasswordRequest body) async {
    Response response = await post(ApiRoutesRepo.baseUrl + uri, body.toJson(),
        headers: {'Content-Type': 'application/json; charset=UTF-8'});

    if (response.statusCode != 201) {
      throw Error();
    }

    return ForgotPasswordResponse.fromJson(response.body);
  }

  Future<BaseResponse<User>> register(UserRegisterRequest request) async {
   
   var response = await http.post(
      Uri.parse(
      ApiRoutesRepo.baseUrl + ApiRoutesRepo.register), body: jsonEncode(request),
      headers: {'Content-Type': 'application/json; charset=UTF-8'});

    var body = jsonDecode(response.body);

    if (response.statusCode != 200) {
      throw body['message'] ?? "Unkown Error";
      }

    return BaseResponse<User>.fromJson(
        body, (data) => User.fromJson(data));
    
  }

  Future<BaseResponse<User>> fetch(int id) async {
    Response response = await get(ApiRoutesRepo.user(id));

    if (response.statusCode != 200) {
      throw Error();
    }

    return BaseResponse<User>.fromJson(
        response.body, (data) => User.fromJson(data));
  }
}
