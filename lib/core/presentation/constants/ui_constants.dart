import 'package:ecomerce_project/core/shared/const.dart';
import 'package:ecomerce_project/home/presentation/screens/home.dart';
import 'package:ecomerce_project/notifications/presentation/screens/notification_screen.dart';
import 'package:ecomerce_project/search/presentation/screens/search_screen.dart';
import 'package:ecomerce_project/user_profile/presentation/views/profile_screen.dart';
import 'package:flutter/material.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
        title: const SizedBox(
      height: 50,
      width: 50,
      child: CircleAvatar(
        backgroundImage: NetworkImage(shopImageSource),
      ),
    ));
  }

  static const List<Widget> bottomTabBarPages = [
    HomeScreen(),
    NotificationScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];
}
