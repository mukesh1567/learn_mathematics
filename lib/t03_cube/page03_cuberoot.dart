import 'dart:math';

import 'package:flutter/material.dart';

class cuberoot extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => cuberootState();
}

class cuberootState extends State<cuberoot> {

  TextEditingController valueController = TextEditingController();

  String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Text(
          "Find Cube Root",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                  label: Text('Cuberoot of'),
                  hintText: 'Enter the number',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  calculateCuberoot();
                },
                child: Text(
                  'CALCULATE',
                )),

            Text("${result ?? ""}", style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    );
  }

  void calculateCuberoot(){
    double no2 = double.parse(valueController.text.toString());
    num cub = pow(no2, 1/3);

    result = cub.toString();

    setState(() {

    });

  }

}
