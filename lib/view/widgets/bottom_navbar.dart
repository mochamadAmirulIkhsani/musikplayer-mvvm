import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musikplayer_mvvm/assets/app_vector.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: const IconThemeData(color: Color(0xFF42C83C)),
      selectedItemColor: const Color(0xFF42C83C),
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppVectors.homeNavbar), label: "Home"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppVectors.discoveryNavbar),
            label: "Discovery"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppVectors.heartFavNavbar), label: "Heart"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppVectors.profileNavbar), label: "Profile")
      ],
    );
  }
}
