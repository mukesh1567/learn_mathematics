import 'package:flutter/material.dart';
import 'package:task_edu_app/t04_average/find_average.dart';
import 'package:task_edu_app/t04_average/notes04.dart';

class AvgHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Center(
          child: Text('Average',style: TextStyle(
            fontSize: 28,fontWeight: FontWeight.bold,
          ),),
        ),
      ),

        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 300,
                height: 100,
                color: Colors.blueGrey,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => AvgNotes(),));
                },
                    child: Text("Average",
                      style: TextStyle(fontSize: 28,color: Colors.white),)),
              ),

              Container(
                margin: EdgeInsets.all(10),
                width: 300,
                height: 100,
                color: Colors.blueGrey,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => FindAverge(),));
                },
                    child: Text("Find Average",
                      style: TextStyle(fontSize: 28,color: Colors.white),)),
              ),
            ],
          ),
        )
    );
  }
}