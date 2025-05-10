import 'package:flutter/material.dart';
import 'package:islami_app/presentation/module/home_module/screens/home_screen/home_screen.dart';
import 'package:islami_app/presentation/module/splash_module/splash_screen.dart';

class RouteManager{
  static const home_screen='/home';
  static const splash_screen='splahe';


  static Route ? route(RouteSettings settings){
    switch(settings.name){
      case home_screen:
        return MaterialPageRoute(builder: (context)=>HomeScreen());
      case  splash_screen:
        return MaterialPageRoute(builder: (context)=> SplashScreen());

    }
  }
}