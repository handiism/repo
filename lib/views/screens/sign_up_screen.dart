import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repo/controllers/sign_up_controller.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/models/user/index.dart';
import 'package:repo/views/widgets/index.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  SignUpController signUpController = SignUpController();

  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var divisionController;
 

   inputHandler() {
    bool isFilled = true;
    if (emailController.text == '' || passwordController.text == '' || usernameController.text == '' || nameController.text == '' || divisionController == null) {
      snackbarRepo('Warning!', 'Data Tidak Boleh Kosong!');
      isFilled = false;
    }
    else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailController.text)) {
      snackbarRepo('Warning!', 'Isi Email Dengan Benar!');
      isFilled = false;
    }
    else if (nameController.text.length < 6) {
      snackbarRepo('Warning!', 'Nama Minimal 6 Karakter!');
      isFilled = false;
    }
    else if (passwordController.text.length < 8) {
      snackbarRepo('Warning!', 'Password Minimal 8 Karakter !');
      isFilled = false;
    }
    else if (usernameController.text.length < 4) {
      snackbarRepo('Warning!', 'Username Minimal 4 Karakter !');
      isFilled = false;
    }
    return isFilled;
  }


  final String url = ApiRoutesRepo.baseUrl + ApiRoutesRepo.division;
  List dropdownlist = [];

  Future<String> getdata() async {
    try{
      var response = await
      http.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json; charset=UTF-8'});
      List resBody = (json.decode(response.body) as Map<String, dynamic>)['data'];;
    
      setState(() {
        dropdownlist = resBody;
      });

      return "Success";

    }catch(e){return "failed";}
   
  }

  @override
  void initState(){
    super.initState();
    this.getdata();
  }

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => signUpController);

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
                  textController: nameController,
                  hintText: 'Nama',
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFieldRepo(
                  textController: usernameController,
                  hintText: 'Username',
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFieldRepo(
                  textController: emailController,
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
                            
                            setState(() {
                              divisionController = value;
                            });
                          },
                           items: dropdownlist.map(
                              (e) {
                                return DropdownMenuItem(
                                  value: e['id'].toString(),
                                  child: Text(e['divisionName']),
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
                  controller: passwordController,
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
                  onPressed: () {
                    if(inputHandler())
                    {var divisionSelected = int.parse(divisionController);
                    
                    var request = UserRegisterRequest(
                        username: usernameController.text,
                        fullName: nameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                        idDivision: divisionSelected);
                    
                    Get.find<SignUpController>().signUp(request);
                    }
                  },
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
