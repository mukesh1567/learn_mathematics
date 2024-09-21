import 'dart:async';
import 'package:flutter/material.dart';


class SplashPg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 4), (){
      
      ///Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home1()));
      
      Navigator.pushReplacementNamed(context, '/home');

    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
             end: Alignment.bottomRight,
             //stops: [0.2,0.6,0.8],
            colors: [
              Colors.blue,
              Colors.red,
            ]
          )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Stack(children: [
            //     Container(width: 250,height: 250,
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         gradient: RadialGradient(
            //             colors: [
            //               Colors.amberAccent,
            //               Colors.red.shade100
            //             ]),),),
            //     Container(width: 200,height: 200,
            //       decoration: BoxDecoration(
            //         shape: BoxShape.rectangle,
            //         gradient: RadialGradient(
            //             colors: [
            //               Colors.grey,
            //               Colors.red.shade50
            //             ]),),),
            //             ],),

            Center(
              child: Text("Easy Mathematics",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                //color: Colors.brown,
                  color: Colors.white,
              ),),
            ),

            Icon(Icons.calculate,size: 200,color: Colors.white,),

          ],
        ),

      ),
    );
  }
}