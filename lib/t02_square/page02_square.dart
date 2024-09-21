import 'package:flutter/material.dart';

class Page_square extends StatefulWidget {
  @override
  State<Page_square> createState() => _Page_squareState();
}

class _Page_squareState extends State<Page_square> {
  TextEditingController inptController = TextEditingController();

  //num? result;
  String? result;

  @override
  Widget build(BuildContext context) {

    ///    TextEditingController inptController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade200,
        title: Center(
          child: Text("Find Square",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            TextField(
              controller: inptController,
              decoration: InputDecoration(
                hintText: 'Enter your number',
                label: Text("Input"),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.black
                  )

                )
              ),
            ),

            SizedBox(height: 20,),

            OutlinedButton(
                onPressed: (){
                  calculateSquare();
                },
                child: Text('CALCULATE')),

            SizedBox(height: 20,),

            Text("${result ?? ""}",style: TextStyle(fontSize: 28),),

          ],
        ),
      ),
    );
  }

  void calculateSquare(){

    double no1 = double.parse(inptController.text.toString());
    double sqrr = no1*no1;

    result =sqrr.toString();

    setState(() {

    });
  }
}
