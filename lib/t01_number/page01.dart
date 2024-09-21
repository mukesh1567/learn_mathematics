import 'package:flutter/material.dart';

class Number extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Text("Number System",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,

        ),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            Image.asset("assets/images/numb2.jpg",),
            Image.asset("assets/images/numb3.jpg",),
            Image.asset("assets/images/numb4.jpg",),
            Image.asset("assets/images/numb5.jpg",),
            Image.asset("assets/images/numb6.jpg",),
            Image.asset("assets/images/numb7.jpg",),
            Image.asset("assets/images/numb8.jpg",),

          ],
        ),
      ),
    );
  }
}