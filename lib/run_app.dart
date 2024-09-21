import 'package:flutter/material.dart';
import 'package:task_edu_app/app_routes.dart';

void main(){
  runApp(EducApp());
}

class EducApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


        initialRoute: AppRoutes.SPLASH_Route,
        routes: AppRoutes.routeMap(),

    );
  }
}