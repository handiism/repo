import 'package:get/get.dart';
import 'package:repo/core/constant/config.dart';
import 'package:repo/services/api_service.dart';
import 'package:repo/views/widgets/snackbar_widget.dart';

class LoginController extends GetxController {
  APIService service = APIService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login(String emailUsername, String password) async {
    _isLoading = true;
    Response response = await service.login(Config.login, {
      'emailUsername': emailUsername,
      'password': password,
    });
    if (response.statusCode == 201) {
      // ignore: avoid_print
      print(response.body);
    } else {
      snackbarRepo('Kesalahan Login', 'Email/Password Salah');
    }

    update();
  }
}
