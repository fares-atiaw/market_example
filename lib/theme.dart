import 'package:flutter/material.dart';

class MyTheme {

  static var LightTheme = ThemeData(

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.blueGrey,
      showUnselectedLabels: true
    ),
  );
}