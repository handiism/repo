import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repo/core/shared/assets.dart';
import 'package:repo/views/screens/home_screen.dart';

import '../../core/shared/colors.dart';
import '../../core/utils/formatting.dart';
import '../screens/profile_screen.dart';

class BottomNavRepo extends StatefulWidget {
  const BottomNavRepo({super.key});

  @override
  State<BottomNavRepo> createState() => _BottomNavRepoState();
}

class _BottomNavRepoState extends State<BottomNavRepo> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    HomeScreen(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: hexToColor(ColorsRepo.primaryColor),
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset(AssetsRepo.iconBerandaSelected)
                : SvgPicture.asset(AssetsRepo.iconBerandaUnselected),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset(AssetsRepo.iconProfilSelected)
                : SvgPicture.asset(AssetsRepo.iconProfilUnselected),
            label: 'Profil',
          ),
        ],
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
