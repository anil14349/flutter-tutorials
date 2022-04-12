import 'time_counter.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
   @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: const <Widget>[
              Text("My Stop Watch : "),
              TimeCounter()
            ],
          ),
        ),
      ),
    );
  }
}
