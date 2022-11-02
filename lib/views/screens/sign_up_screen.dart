import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repo/controllers/sign_up_controller.dart';
import 'package:repo/core/constant/assets.dart';
import 'package:repo/core/routes.dart';
import 'package:repo/core/utils/styles.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/core/constant/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> divisi = <String>[
      'Mobile Development',
      'Web Development',
      'Human Resources'
    ];
    SignUpController signUpController = SignUpController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35, 35, 35, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      AssetsRepo.itcLogo,
                      height: 88.19999694824219,
                      width: 54.60000228881836,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'ITC Repository',
                      style: TextStyle(
                        color: hexToColor(ColorsRepo.primaryColor),
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Daftar',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: hexToColor(ColorsRepo.secondaryColor),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: hexToColor(ColorsRepo.primaryColor),
                            ),
                          ),
                          hintText: 'Nama',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: hexToColor(ColorsRepo.secondaryColor),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: hexToColor(ColorsRepo.primaryColor),
                            ),
                          ),
                          hintText: 'Username',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: hexToColor(ColorsRepo.secondaryColor),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: hexToColor(ColorsRepo.primaryColor),
                            ),
                          ),
                          hintText: 'Email',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: hexToColor(ColorsRepo.primaryColor),
                                    width: 1))),
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
                                value: signUpController
                                            .selectedDivision.value ==
                                        ''
                                    ? null
                                    : signUpController.selectedDivision.value,
                                hint: const Text('Divisi'),
                                icon: const Icon(Icons.arrow_drop_down),
                                elevation: 2,
                                dropdownColor:
                                    hexToColor(ColorsRepo.secondaryColor),
                                onChanged: (value) {
                                  signUpController.setDivision(value!);
                                },
                                items: divisi.map<DropdownMenuItem<String>>(
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
                        height: 20,
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
                        height: 20,
                      ),
                      SizedBox(
                        height: 44,
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: raisedButtonStyle(),
                          child: const Text(
                            'Daftar',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Sudah mempunyai akun?'),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(RoutesRepo.login);
                            },
                            child: const Text('Masuk'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
