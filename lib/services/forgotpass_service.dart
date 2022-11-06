import 'package:get/get.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/models/forgotpass/forgotpass.dart';

class ForgotpassService extends GetConnect implements GetxService {
  Future<Forgotpass> forgotpass(String uri, ForgotPassRequest body) async {
    Response response = await post(
      ApiRoutesRepo.baseUrl + uri,
      body.toJson(),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
    );

    if (response.statusCode != 201) {
      throw Error();
    }

    return Forgotpass.fromJson(response.body);
  }
}
