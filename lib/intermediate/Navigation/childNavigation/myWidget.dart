import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget{


  
  @override
  Widget build(BuildContext context) {
  return Card(
    child: Column(
      children: <Widget>[
        const Text('Click to Navigate'),
        ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/Home');
        },
            child: const Text('Click Me'))
      ],
    ),
  );
  }
  
  
}