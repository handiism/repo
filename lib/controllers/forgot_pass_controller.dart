import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/models/user/forgot_password.dart';
import 'package:repo/services/user_service.dart';
import 'package:repo/views/widgets/snackbar_widget.dart';

class ForgotpassController extends GetxController {
  UserService service = UserService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login(ForgotPasswordRequest userLoginRequest) async {
    _isLoading = true;
    try {
      ForgotPasswordResponse userLoginRespone =
          await service.forgotPassword(ApiRoutesRepo.forgot, userLoginRequest);
      debugPrint(userLoginRespone.message);
      debugPrint(userLoginRespone.data);
      if (userLoginRespone.status == "success") {
        Get.offNamed(AppRoutesRepo.forgotPasswordMassage);
      }
    } catch (e) {
      snackbarRepo('kesalahan', 'Email tidak ditemukan');
    }

    update();
  }
}
