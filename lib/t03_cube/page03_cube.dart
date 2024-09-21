import 'package:flutter/material.dart';

class cube extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => cubeState();
}

class cubeState extends State<cube> {

  TextEditingController valueController = TextEditingController();

  String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Text(
          "Find Cube",
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
                  label: Text('Cube of'),
                  hintText: 'Enter the number',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Colors.black))),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  calculateCube();
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

  void calculateCube(){
    double no2 = double.parse(valueController.text.toString());
    double cub = no2*no2*no2;

    result = cub.toString();

    setState(() {

    });

  }

}
