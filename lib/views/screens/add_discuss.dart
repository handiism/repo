import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/views/widgets/index.dart';

class AddDiscussScreen extends StatefulWidget {
  const AddDiscussScreen({super.key});

  @override
  State<AddDiscussScreen> createState() => _AddDiscussScreenState();
}

class _AddDiscussScreenState extends State<AddDiscussScreen> {

  TextEditingController _te = TextEditingController();
  TextEditingController _ted = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah diskusi"),
        backgroundColor: hexToColor(ColorsRepo.primaryColor),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.send))
        ],
      ),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFieldRepo(textController: _te, hintText: "Judul"),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.4,
                    child: TextFieldRepo(
                      textController: _ted,
                      hintText: "Deskripsi Diskusi",
                      multiLine: true,
                    ),
                  )
                ],
              ),
            ),
          )
        ),
    );
  }
}