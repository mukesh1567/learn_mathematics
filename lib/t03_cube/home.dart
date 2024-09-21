import 'package:flutter/material.dart';
import 'package:task_edu_app/t03_cube/page03_cube.dart';
import 'package:task_edu_app/t03_cube/page03_cuberoot.dart';
import 'package:task_edu_app/t03_cube/page03b.dart';

class page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Text("Cube & CubeRoot",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,

          ),),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 300,
            height: 100,
            color: Colors.blueGrey,
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => cube(),));
            },
                child: Text("Cube",style: TextStyle(fontSize: 28,color: Colors.white),)),
          ),

          Row(
            children: [
              SizedBox(width: 20,),

              Container(
                width: 300,
                height: 100,
                color: Colors.blueGrey,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => cuberoot(),));
                },
                    child: Text("Cube Root",style: TextStyle(fontSize: 28,color: Colors.white),)),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.all(10),
            width: 300,
            height: 100,
            color: Colors.blueGrey,
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => cubeNote(),));
            },
                child: Text("Notes & Tricks",style: TextStyle(fontSize: 28,color: Colors.white),)),
          ),
        ],
      )

    );
  }
}