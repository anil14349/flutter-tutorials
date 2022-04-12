import 'package:flutter/material.dart';
import '../code/GlobalState.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late TextEditingController _name;
  final GlobalState _store = GlobalState.instance;


  @override
  void initState() {
    _name = TextEditingController();
    _store.set('name', '');
    _name.text = _store.get('name');
  }


  void _onPressed(){
    setState(() {
      _store.set('name', _name.text);
    });

    Navigator.of(context).pushNamedAndRemoveUntil(
        "/Second", (Route<dynamic> route) => false);
  }

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
            children: <Widget>[
              TextField(
                controller: _name,
                decoration: const InputDecoration(labelText: 'Enter your name'),
              ),
              ElevatedButton(
                  onPressed: _onPressed,
                  child: const Text("Next")),
            ],
          ),
        ),
      ),
    );
  }
}
