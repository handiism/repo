import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:repo/controllers/login_controller.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/core/routes/routes.dart';
import 'package:repo/models/user/login.dart';
import 'package:repo/views/widgets/index.dart';
import 'package:get/get.dart';


class PertanyaanScreen extends StatefulWidget {
  const PertanyaanScreen({super.key});

  @override
  State<PertanyaanScreen> createState() => _PertanyaanScreenState();
}

class _PertanyaanScreenState extends State<PertanyaanScreen> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     appBar: AppBar(
      title : Text('Pertanyaan'),
      backgroundColor: hexToColor(ColorsRepo.primaryColor),
     ),
     body : SafeArea(
      child : Container(
      color : hexToColor(ColorsRepo.lightGray),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom : 55),
            child : ListView(
            children: [
              KomentarBoxParent(
                title : "Lorem ipsum dolor sit amet",
                username : "Muhammad Rafli",
                text : "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                date : "12/03/2022"
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                color : hexToColor(ColorsRepo.lightGray),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children : [
                    Text(
                      "Komentar",
                      style: TextStyle(
                          fontSize: 23,  
                          fontWeight : FontWeight.w700,
                          ),
                      ),
                      SizedBox(
                        height: 10
                      ),
                      KomentarBoxChild(
                        username : "Muhammad Rafli",
                        text :  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",       
                      )
                  ]
                )
              )
            ]
          ), 
          ),
          
          Align( 
          alignment: Alignment.bottomCenter,       
          child: Material(
            elevation : 10,
            child: Container(
                  color : Colors.white,
                  child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width-40,
                child: TextField(
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: "Comment",
                    contentPadding: EdgeInsets.all(20),
                     border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    )
                ),
                ),
              InkWell(
                child: Icon(
                Icons.send,
                color: hexToColor(ColorsRepo.primaryColor),
                size: 24.0,
              ),
                onTap:(){}
              ),  
            ]
          ),
        ),
        ),
            
        ),
          
          
         
        ]
      ),
     ), 
     ),
    );
  }
}

