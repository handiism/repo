import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';

class MateriItemWidget extends StatelessWidget {
  const MateriItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: hexToColor(ColorsRepo.darkGray),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(3, 5),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text("[Judul Materi]")),
                PopupMenuButton<String>(
                  onSelected: popmenuClicked,
                  itemBuilder: (BuildContext context) {
                    return {0, 1}.map((int choice) {
                      return PopupMenuItem<String>(
                        value: choice.toString(),
                        child: Text(choice==0 ? 'Edit [Materi]' : 'Hapus'),
                      );
                    }).toList();
                  },
                ),
              ],
            ),
            Text(
              "34 Bab | 8 Artikel",
              style: TextStyle(color: hexToColor(ColorsRepo.darkGray)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: hexToColor(ColorsRepo.blueDeFrance)),
                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: const Text(
                      "Mobile Development",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            )
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
