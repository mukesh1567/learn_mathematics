import 'package:flutter/material.dart';

class AvgNotes extends StatelessWidget{
  List<String> mAvg =[
    'assets/images/avg (1).jpg',
    'assets/images/avg (2).jpg',
    'assets/images/avg (3).jpg',
    'assets/images/avg (4).jpg',
    'assets/images/avg (5).jpg',
    'assets/images/avg (6).jpg',
    'assets/images/avg (7).jpg',
    'assets/images/avg (8).jpg',
    'assets/images/avg (9).jpg',
    'assets/images/avg (10).jpg',
    'assets/images/avg (11).jpg',
    'assets/images/avg (12).jpg',
    'assets/images/avg (13).jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Center(child: Text('Notes',
        style: TextStyle(
          fontSize: 28,
          color: Colors.white
        ),)),
      ),

      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: mAvg.length,
            itemBuilder: (_, index){
          return Image.asset(mAvg[index]);
        }),
      ),
    );
  }
}