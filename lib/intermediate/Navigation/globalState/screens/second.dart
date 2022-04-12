import 'package:flutter/material.dart';
import '../code/GlobalState.dart';


class Second extends StatefulWidget{
  const Second({Key? key}) : super(key: key);
  @override
  _SecondState createState() => _SecondState();

}

class _SecondState extends State<Second>{

  final GlobalState _store = GlobalState.instance;
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
                Text("Hello ${_store.get('name')}"),
            ElevatedButton(onPressed: (){ Navigator.of(context).pushNamedAndRemoveUntil("/Home",(Route<dynamic> route)=> false);}, child: const Text("Back")),
            ElevatedButton(onPressed: (){ Navigator.of(context).pushNamedAndRemoveUntil("/Third",(Route<dynamic> route)=> false);} , child: const Text("Next"),
                )

        ],
      ),
    ),

    ),
    );
  }

}


