import 'package:get/get.dart';
import 'package:repo/core/constant/config.dart';

class APIService extends GetConnect implements GetxService {
  Future<Response> login(String uri, dynamic body) async {
    Response response = await post(
      Config.apiUrl + uri,
      body,
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
    );
    return response;
  }
}
