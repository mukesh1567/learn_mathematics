import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindAverge extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FindAverageState();
}

class FindAverageState extends State<FindAverge> {
  TextEditingController sumController = TextEditingController();
  TextEditingController noController = TextEditingController();

  String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Center(child: Text('Find average',
        style: TextStyle(fontSize: 28,color: Colors.white),
        ),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(controller: sumController,
              decoration: InputDecoration(
                label: Text('Sum'),
                hintText: 'Total sum of value',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.black,
                  )
                )
              ),
            ),

            SizedBox(height: 40,),

            TextField(controller: noController,
              decoration: InputDecoration(
                  label: Text('Number'),
                  hintText: 'Number of value',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black,
                      )
                  )
              ),
            ),

            SizedBox(height: 40,),

            OutlinedButton(onPressed: (){
              getAverage();
            },
                child: Text('Press here')),
            
            Center(child: Text("${result ?? ""}")),
          ],
        ),
      ),

    );
  }

  void getAverage(){

    double sum = double.parse(sumController.text.toString());
    double value = double.parse(noController.text.toString());

    double average = sum/value;
    result = average.toString();


}
}
