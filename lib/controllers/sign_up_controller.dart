import 'package:get/get.dart';

class SignUpController extends GetxController {
  final selectedDivisi = ''.obs;
  void setDivisi(String newValue) {
    selectedDivisi.value = newValue;
  }
}
