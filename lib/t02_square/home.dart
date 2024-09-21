import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:task_edu_app/t02_square/page02.dart';
import 'package:task_edu_app/t02_square/page02_square.dart';
import 'package:task_edu_app/t02_square/page02_squareroot.dart';

class Page02a extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Center(child: Text('Square & Square roots',
            style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
        )),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGrid.count(
            crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [

          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(color: Colors.blueGrey,
            child: TextButton(
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (_) => Square(),));
                }, child: Text("Notes",style: TextStyle(fontSize: 25,color: Colors.white),)),
            )),

          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: Container(color: Colors.blueGrey,
              child: TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => Page_square(),
                ));
              },
                  child: Text("Square",style: TextStyle(fontSize: 25,color: Colors.white),)),
          ),),

          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(color: Colors.blueGrey,
                child: TextButton(
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (_) => Page_squareroot(),));
                    },
                    child: Text("Square root",style: TextStyle(fontSize: 25,color: Colors.white),)),
              )),


        ],),
      ),

    );
  }
}