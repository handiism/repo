import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/models/forgotpass/forgotpass.dart';
import 'package:repo/services/forgotpass_service.dart';

import 'package:repo/views/widgets/snackbar_widget.dart';

class ForgotpassController extends GetxController {
  ForgotpassService service = ForgotpassService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login(ForgotPassRequest userLoginRequest) async {
    _isLoading = true;
    try {
      Forgotpass userLoginRespone =
          await service.forgotpass(ApiRoutesRepo.forgot, userLoginRequest);
      debugPrint(userLoginRespone.message);
      debugPrint(userLoginRespone.data);
    } catch (e) {
      snackbarRepo('kesalahan', 'Email tidak ditemukan');
    }

    update();
  }
}
