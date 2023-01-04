import 'package:flutter/material.dart';
import 'package:repo/core/shared/colors.dart';
import 'package:repo/core/utils/formatting.dart';
import 'package:repo/views/widgets/index.dart';

class KomentarBoxParent extends StatelessWidget {
   
  final String username;
  final String text;
  final String title;
  final String date;

  void handleClick(String value) {
    switch (value) {
      case 'Laporkan Pertanyaan':
        break;
      case 'Hapus':
        break;
    }
  }

 

  const KomentarBoxParent({
    super.key,
    required this.username,
    required this.text,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                color : Colors.white,
                padding: const EdgeInsets.all(20),
                child : Container(
                  child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children : [
                    Row(
                      children: [
                        Icon(
                          Icons.account_box_rounded,
                          color: hexToColor(ColorsRepo.primaryColor),
                          size: 37.0,
                        ),
                        SizedBox(
                          width : 8
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(username,
                            style: TextStyle(
                            fontSize: 16,  
                            fontWeight: FontWeight.w500,
                            ),
                            ),
                          SizedBox(
                          height : 5
                          ),  
                          Text(
                          date,
                          style: TextStyle(
                          fontSize: 14,  
                          color: hexToColor(ColorsRepo.darkGray),
                            ),
                          ),
                            
                        ]
                        ),
                         SizedBox(
                          width : 137
                        ),
                        PopupMenuButton<String>(
                        onSelected: handleClick,
                        itemBuilder: (BuildContext context) {
                          return {'Laporkan Pertanyaan', 'Hapus'}.map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
                      ),
                      ]
                    ),
                    SizedBox(
                      height : 25,
                    ),
                    Text(title,
                     style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 23,
                            ),
                    ),
                     SizedBox(
                      height : 5
                    ),
                    
                    Text(text,
                     style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            height : 1.5,
                            ),
                    ),
                     SizedBox(
                      height : 16
                    ),
                    ButtonBalas(
                      onPressed : (){}
                    )
                  ]
                )
                ),
              );
  }
}

class KomentarBoxChild extends StatelessWidget {
   
  final String username;
  final String text;
 
  const KomentarBoxChild({
    super.key,
    required this.username,
    required this.text,
  
  });

  void handleClick(String value) {
    switch (value) {
      case 'Laporkan Pertanyaan':
        break;
      case 'Hapus':
        break;
    }
  }

 

  

  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                 color : Colors.white,
                ),
                padding: const EdgeInsets.all(20),
                child : Container(
                  child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children : [
                    Row(
                      children: [    
                        Icon(
                          Icons.account_box_rounded,
                          color: hexToColor(ColorsRepo.primaryColor),
                          size: 37.0,
                        ),

                        SizedBox(
                          width : 8
                        ),
                        Text(username,
                          style: TextStyle(
                          fontSize: 16,  
                          fontWeight: FontWeight.w700,
                          ),
                        ),
                         SizedBox(
                          width : 95
                        ),
                        PopupMenuButton<String>(
                        onSelected: handleClick,
                        itemBuilder: (BuildContext context) {
                          return {'Laporkan Pertanyaan', 'Hapus'}.map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
                      ),
                      ]
                    ),
                   
                    Container(
                      margin: const EdgeInsets.only(left: 50.0),
                      child : Text(
                        text,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            height : 1.5,
                            ),
                    ),
                    )
                    
                   
                  ]
                )
                ),
              );
  }
}
