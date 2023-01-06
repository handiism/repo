// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/views/widgets/materi_widget.dart';

class DaftarMateriScreen extends StatelessWidget {
  const DaftarMateriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Materi"),
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
                Text('Daftar Materi',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                Padding(padding: EdgeInsets.only(top: 10), child: Text('4 Materi'),),
                Padding(
                  padding: EdgeInsets.only(top:10, bottom: 10),
                  child: MateriItemWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10, bottom: 10),
                  child: MateriItemWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10, bottom: 10),
                  child: MateriItemWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10, bottom: 10),
                  child: MateriItemWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
