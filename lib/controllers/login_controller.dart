import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:repo/core/routes/app_routes.dart';
import 'package:repo/models/user/login.dart';
import 'package:repo/services/user_service.dart';
import 'package:repo/views/widgets/snackbar_widget.dart';

class LoginController extends GetxController {
  UserService service = UserService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login(UserLoginRequest userLoginRequest) async {
    _isLoading = true;
    try {
      var response = await service.login(userLoginRequest);
      debugPrint(response.data.user.toJson().toString());
      if (response.status == 'success') {
        Get.offAllNamed(AppRoutesRepo.bottomNavigator);
      }
    } catch (e) {
      snackbarRepo('Kesalahan Login', 'Email/Username/Password Salah');
    }

    update();
  }
}
