

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/my_theme.dart';
import 'package:islami_app/core/route_manager.dart';
import 'package:islami_app/presentation/module/home_module/screens/home_screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyTheme.lightTheme,
        themeMode: ThemeMode.light,
        onGenerateRoute: RouteManager.route,
        initialRoute:RouteManager.home_screen,

      ),
    );
  }
}
