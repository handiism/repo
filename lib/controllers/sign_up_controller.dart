import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:repo/models/user/index.dart';
import 'package:repo/services/user_service.dart';
import 'package:repo/views/widgets/index.dart';

class SignUpController extends GetxController {
  UserService service = UserService();
  final selectedDivision = ''.obs;

  void setDivision(String division) {
    selectedDivision.value = division;
    update();
  }

  Future<void> signUp(UserRegisterRequest request) async {
    try {
      List<String> division = <String>[
        'Back-end Developer',
        'Front-end Developer',
        'Mobile Developer',
        'Public Relations',
        'Project Manager'
      ];

      for (var element in division) {
        debugPrint('${selectedDivision.toString()} == $element');
        if (selectedDivision.toString() == element) {
          request.idDivision = division.indexOf(element) + 1;
          break;
        } else {
          request.idDivision = 0;
        }
      }

      var response = await service.register(request);
      debugPrint(response.data.toJson().toString());
    } catch (e) {
      snackbarRepo('Kesalah Register', 'Pastikan Data Terisi Dengan Benar.');
    }
  }
}
