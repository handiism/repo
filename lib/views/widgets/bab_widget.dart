import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';

class BabItemWidget extends StatelessWidget {
  const BabItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: hexToColor(ColorsRepo.secondaryColor),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(1, 1),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text("[Judul Bab]",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)),
                PopupMenuButton<String>(
                  onSelected: popmenuClicked,
                  itemBuilder: (BuildContext context) {
                    return {0, 1}.map((int choice) {
                      return PopupMenuItem<String>(
                        value: choice.toString(),
                        child: Text(choice==0 ? 'Edit [Bab]' : 'Hapus'),
                      );
                    }).toList();
                  },
                ),
              ],
            ),
            Text(
              "8 Artikel",
              style: TextStyle(color: hexToColor(ColorsRepo.darkGray),fontWeight: FontWeight.w500,fontSize: 16,),
            ),
           
          ],
        ),
      ),
    );
  }

  popmenuClicked(dynamic param) {
    param = int.parse(param);
    if (param ==1) {
      print('Hapus');
    }
    else {
      print('Edit');
    }
  }
}
