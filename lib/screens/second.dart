import 'package:flutter/material.dart';


class Second extends StatefulWidget {
  Second(this.name);
  String name;
  @override
  _SecondState createState() => _SecondState(name);
}

class _SecondState extends State<Second> {
  _SecondState(this.name);
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name here'),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Hello $name'),
                ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: const Text('Back'),)
              ],
            ),
          )
      ),
    );
  }
}