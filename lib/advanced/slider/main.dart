import 'package:flutter/material.dart';


void main(){
  runApp(const MaterialApp(
    home : MyApp()
  ));

}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  _State createState() => _State();

}

class _State extends State<MyApp>{

  late double _x;
  late double _y;
  late double _z;


  @override
  void initState() {
    _x = 0.0;
    _y = 0.0;
    _z = 0.0;

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text("X"),
                  RotatedBox(
                    child: Slider(value: _x, onChanged: (double value) => setState(() {
                    _x= value;
                  }), activeColor: Colors.red,),
                    quarterTurns: -1,)
                ],
              ),
              Column(
                children: <Widget>[
                  const Text("Y"),
                  RotatedBox(
                    child:Slider(value: _y, onChanged: (double value) => setState(() {
                    _y= value;
                  })),quarterTurns: -1,)
                ],
              )
              ,Column(
                children: <Widget>[
                  const Text("Z"),
                  RotatedBox(
                    quarterTurns: -1,
                    child:Slider(value: _z, onChanged: (double value) => setState(() {
                    _z= value;
                  })))
                ],
              ),
              Transform(transform: Matrix4.skewY(_y),
              child:Transform(transform: Matrix4.skewX(_x) ,
                child:Transform(transform: Matrix4.rotationZ(_z) ,
                child:const Padding(padding: EdgeInsets.all(10.0),
                child: Text("Hello Anil"),
                ),
                )
              )
              )
            ],
          ),
        ),

      ),
    );
  }

}


