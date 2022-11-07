import 'package:get/get.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/models/user/user.dart';

class ApiService extends GetConnect implements GetxService {
  Future<Response> login(String uri, UserLoginRequest body) async {
    Response response = await post(
      ApiRoutesRepo.baseUrl + uri,
      body.toJson(),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
    );
    return response;
  }
}
