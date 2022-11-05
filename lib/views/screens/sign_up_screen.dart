import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repo/controllers/sign_up_controller.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/views/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> division = <String>[
      'Mobile Development',
      'Web Development',
      'Human Resources'
    ];
    SignUpController signUpController = SignUpController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(36, 36, 36, 36),
            child: Column(
              children: [
                const BannerRepo(),
                const SizedBox(
                  height: 24,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFieldRepo(
                  textController: TextEditingController(),
                  hintText: 'Nama',
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFieldRepo(
                  textController: TextEditingController(),
                  hintText: 'Username',
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFieldRepo(
                  textController: TextEditingController(),
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: hexToColor(ColorsRepo.primaryColor), width: 1),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4)),
                      color: hexToColor(ColorsRepo.secondaryColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Obx(
                        () => DropdownButton(
                          underline: const SizedBox(),
                          isExpanded: true,
                          value: signUpController.selectedDivision.value == ''
                              ? null
                              : signUpController.selectedDivision.value,
                          hint: const Text('Divisi'),
                          icon: const Icon(Icons.arrow_drop_down),
                          elevation: 2,
                          dropdownColor: hexToColor(ColorsRepo.secondaryColor),
                          onChanged: (value) {
                            signUpController.setDivision(value!);
                          },
                          items: division.map<DropdownMenuItem<String>>(
                            (String e) {
                              return DropdownMenuItem<String>(
                                value: e,
                                child: Text(e),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: hexToColor(ColorsRepo.secondaryColor),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: hexToColor(ColorsRepo.primaryColor),
                      ),
                    ),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                ButtonRepo(
                  text: 'Daftar',
                  backgroundColor: ColorsRepo.primaryColor,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Sudah mempunyai akun? ',
                          style: TextStyle(
                            color: hexToColor(ColorsRepo.darkGray),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: 'Masuk',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(AppRoutesRepo.login);
                            },
                          style: TextStyle(
                            color: hexToColor(ColorsRepo.primaryColor),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
