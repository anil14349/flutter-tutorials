import 'package:flutter/material.dart';


void main(){
  runApp(const MaterialApp(
      home : Second()
  ));

}

class Second extends StatefulWidget{
  const Second({Key? key}) : super(key: key);
  @override
  _SecondState createState() => _SecondState();

}

class _SecondState extends State<Second>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
            child: Column(
                children: <Widget>[
                const Text("Second Page"),
            ElevatedButton(onPressed: (){ Navigator.of(context).pushNamedAndRemoveUntil("/Home",(Route<dynamic> route)=> false);}, child: const Text("Back")),
            ElevatedButton(onPressed: (){ Navigator.of(context).pushNamedAndRemoveUntil("/Third",(Route<dynamic> route)=> false);} , child: const Text("Next"))
        ],
      ),
    ),

    ),
    );
  }

}


