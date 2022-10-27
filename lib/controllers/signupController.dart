import 'package:get/get.dart';

class SignupController extends GetxController{
  final selectedDivisi = "".obs;
  void setDivisi(String newValue){
    selectedDivisi.value=newValue;
  }
}