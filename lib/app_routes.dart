import 'package:flutter/material.dart';
import 'package:task_edu_app/homepage.dart';
import 'package:task_edu_app/pg_splash.dart';
import 'package:task_edu_app/t01_number/page01.dart';
import 'package:task_edu_app/t02_square/home.dart';
import 'package:task_edu_app/t03_cube/home.dart';
import 'package:task_edu_app/t04_average/home04.dart';


class AppRoutes {

  static final String SPLASH_Route = '/splash';
  static final String HOME_Route = '/home';
  static final String NUMBER_Route = '/number';
  static final String SQUARE_Route = '/square';
  static final String CUBE_Route = '/cube';
  static final String AVERAGE_Route = '/average';


  static Map<String,Widget Function(BuildContext)> routeMap() => {
    SPLASH_Route : (context) => SplashPg(),
    HOME_Route : (context) => Home1(),
    NUMBER_Route : (context) => Number(),
    SQUARE_Route : (context) => Page02a(),
    CUBE_Route : (context) => page3(),
    AVERAGE_Route : (context) => AvgHome(),

  };
}