import 'package:get/get.dart';

class SignUpController extends GetxController {
  final selectedDivision = ''.obs;
  void setDivision(String division) {
    selectedDivision.value = division;
  }
}
