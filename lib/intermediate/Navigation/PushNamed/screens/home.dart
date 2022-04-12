import 'package:flutter/material.dart';


void main(){
  runApp(const MaterialApp(
    home : Home()
  ));

}

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home>{

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
              const Text("Welcome Home"),
              ElevatedButton(onPressed: (){ Navigator.of(context).pushNamed("/Second");} , child: const Text("Next"))
            ],
          ),
        ),

      ),
    );
  }

}


