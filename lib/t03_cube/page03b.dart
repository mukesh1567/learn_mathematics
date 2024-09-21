import 'package:flutter/material.dart';

class cubeNote extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Text("Notes & Tricks",style: TextStyle(fontSize: 28,),),
      ),
      
      body:
        ListView(
          children: [
            Image.asset("assets/images/cube01.jpg",
            //fit: BoxFit.fill,
            ),
          ],
        )

    );
  }
}