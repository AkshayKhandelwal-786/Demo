import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text:"0");
  final TextEditingController t2 = TextEditingController(text:"0");

  void Addition(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1+ num2;
    });
  }
  void subtraction(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void Multiplication(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void Division(){
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }
  void Clear()
  {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Output : $sum ",style: TextStyle(fontSize: 20.0,color: Colors.purple,fontWeight: FontWeight.bold,),),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Number 1",
                 ),
                 controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Number 2"
                ),
                controller: t2,
              ),
              Padding(padding: EdgeInsets.only(top: 1.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(child : Text("+"),color: Colors.greenAccent,onPressed: Addition,),
                  MaterialButton(child : Text("-"),color: Colors.greenAccent,onPressed: subtraction,),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 1.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(child : Text("*"),color: Colors.greenAccent,onPressed: Multiplication,),
                  MaterialButton(child : Text("/"),color: Colors.greenAccent,onPressed: Division,),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 1.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(child : Text("Clear"),color: Colors.greenAccent,onPressed: Clear,),
                ],
              )
            ],
          )
      ) ,
    );
  }
}