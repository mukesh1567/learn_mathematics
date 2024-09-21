import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {

  List<Map<String, dynamic>> topicName = [
    {
      'topic': '1. Number System',
      'route' : "/number",

    },
    {
      'topic': '2. Square & SquareRoot',
      'route' : "/square",

    },
    {
      'topic': '3. Cube & CubeRoot',
      'route' : "/cube"

    },
    {
      'topic': '4. Average',
      'route' : '/average'

    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Center(
          child: Text(
            "Topic Name",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: topicName.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                margin: EdgeInsets.all(2),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(

                  // gradient: LinearGradient(
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //     colors: [Colors.blue, Colors.red]),
                   color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {
                    ///Navigator.push(context, MaterialPageRoute(builder: (_) => Number(),));
                    
                    Navigator.pushNamed(context, topicName[index]['route']);

                    },
                  child: Text(
                    topicName[index]['topic'],
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 28,
                        //fontFamily: 'cursiveFont',
                        //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
