import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/views/widgets/materi_diskusi.dart';

class DiscussMateri extends StatelessWidget {
  const DiscussMateri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JudulMateri'),
        backgroundColor: hexToColor(ColorsRepo.primaryColor),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(36, 36, 36, 36),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Diskusi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                const MateriWidget(Username: "Username", UrlProfilePic: "UrlProfilePic", Tanggal: "Tanggal", JudulDiskusi: "JudulDiskusi", DetailDiskusi: "DetailDiskusi"),
                const MateriWidget(Username: 'Muhammad Rafli', UrlProfilePic: 'UrlProfilePic', Tanggal: '20/12/2022', JudulDiskusi: 'Lorem ipsum Dolorsit', DetailDiskusi: 'akmgkamoambkoambokamobmaokbmaokbmaokmbaokmbkoambokambokambkoambokamokbmaokbmaokbmaokmbokambokambokmdlmnbijnsjbsbkmkbmokraba'),
                const MateriWidget(Username: 'Muhammad Rafli', UrlProfilePic: 'UrlProfilePic', Tanggal: '20/12/2022', JudulDiskusi: 'Lorem ipsum Dolorsit', DetailDiskusi: 'akmgkamoambkoambokamobmaokbmaokbmaokmbaokmbkoambokambokambkoambokamokbmaokbmaokbmaokmbokambokambokmdlmnbijnsjbsbkmkbmokraba'),
                const MateriWidget(Username: 'Muhammad Rafli', UrlProfilePic: 'UrlProfilePic', Tanggal: '20/12/2022', JudulDiskusi: 'Lorem ipsum Dolorsit', DetailDiskusi: 'akmgkamoambkoambokamobmaokbmaokbmaokmbaokmbkoambokambokambkoambokamokbmaokbmaokbmaokmbokambokambokmdlmnbijnsjbsbkmkbmokraba'),
              ],
            )
            ),
            ),
        ),
    );
  }
}