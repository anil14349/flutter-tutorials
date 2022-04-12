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
              Text("Sun Shine"),
              Container(
                child: Image(image: AssetImage("images/anilphoto.jpg"),),
                padding: EdgeInsets.all(32.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange,width: 2.0),
                  gradient: RadialGradient(colors: <Color>[Colors.white,Colors.black])
                ),
              )

            ],
          ),
        ),

      ),
    );
  }

}


