import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/views/widgets/button_widget.dart';

class MateriWidget extends StatelessWidget {
  final String Username;
  final String UrlProfilePic;
  final String Tanggal;
  final String JudulDiskusi;
  final String DetailDiskusi;

  const MateriWidget({
    super.key,
    required this.Username,
    required this.UrlProfilePic,
    required this.Tanggal,
    required this.JudulDiskusi,
    required this.DetailDiskusi,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 14),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: hexToColor(ColorsRepo.darkGray),spreadRadius: 1, blurRadius: 10,offset: Offset(3,5)),
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              this.Username,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(this.Tanggal),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Text(
                    this.JudulDiskusi,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 65,
                  child: Text(
                    'vegeamgamgokmaokgmakogmkoaemgkoaemgokaemgomaegokmaokgmaokgmoakmgokamgoamgomakoegmaokmgokaemgoaemgkaemgka',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
