import 'package:flutter/material.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/views/widgets/index.dart';

class BabScreen extends StatelessWidget {
  const BabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexToColor(ColorsRepo.lightGray),
      appBar: AppBar(
        title: const Text("[Judul Materi]"),
        backgroundColor: hexToColor(ColorsRepo.primaryColor),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text('Daftar Bab',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                
                Padding(padding: EdgeInsets.only(top: 10),
                 child: Text('4 Bab | 32 Artikel', style: TextStyle(color: hexToColor(ColorsRepo.darkGray),fontSize: 19),
                 ),),
                Padding(
                  padding: EdgeInsets.only(top:10, bottom: 10),
                  child: BabItemWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10, bottom: 10),
                  child: BabItemWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10, bottom: 10),
                  child: BabItemWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10, bottom: 10),
                  child: BabItemWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
