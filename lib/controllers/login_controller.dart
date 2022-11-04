import 'package:get/get.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/models/user/user.dart';
import 'package:repo/services/api_service.dart';
import 'package:repo/views/widgets/snackbar_widget.dart';

class LoginController extends GetxController {
  ApiService service = ApiService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login(UserLoginRequest userLoginRequest) async {
    _isLoading = true;
    try {
      await service.login(ApiRoutesRepo.login, userLoginRequest);
    } catch (e) {
      snackbarRepo('Kesalahan Login', 'Email/Password Salah');
    }

    update();
  }
}
