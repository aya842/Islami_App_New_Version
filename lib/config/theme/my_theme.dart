import 'package:flutter/material.dart';
import 'package:islami_app/core/app_style_manager.dart';
import 'package:islami_app/core/colors_manager.dart';

class MyTheme{
  static  ThemeData lightTheme=ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: AppStyle.appBarStyle,
      backgroundColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor:ColorsManager.bottom_nav_bar,


  )

  );
}
