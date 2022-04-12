import 'package:flutter/material.dart';


void main(){
  runApp(const MaterialApp(
      home : Third()
  ));

}

class Third extends StatefulWidget{
  const Third({Key? key}) : super(key: key);
  @override
  _ThirdState createState() => _ThirdState();

}

class _ThirdState extends State<Third>{

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
                  const Text("Third Page"),
              ElevatedButton(onPressed:(){ Navigator.of(context).pushNamedAndRemoveUntil("/Second",(Route<dynamic> route)=> false);}, child: const Text("Back")),

      ],
    ),
    ),

    ),
    );
  }

}


