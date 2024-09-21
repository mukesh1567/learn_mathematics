import 'package:flutter/material.dart';

class Square extends StatelessWidget{

  List<String> mImages = [
    'assets/images/sqrs.jpg',
    'assets/images/sqroot1.jpg',
    'assets/images/sqroot.png',
    'assets/images/sqrs.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Text("Square & SquareRoot",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,

          ),),
      ),


      body: Container(
        margin: EdgeInsets.all(12),
        //width: double.infinity,
        //height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.yellow.shade100,
          border: Border.all(
            color: Colors.black,
            width: 3
          ),
        ),
        child: ListView.builder(
            itemCount: mImages.length,
            itemBuilder: (_, index){
          return Image.asset(mImages[index]);
          
          //   Container(
          //   width: double.infinity,
          //   height: double.infinity,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage(mImages[index]),
          //         //fit: BoxFit.cover,
          //       )
          //   ),
          // );

        }),
      ),
    );
  }
}