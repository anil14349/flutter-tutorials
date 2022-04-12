import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  late bool _visible;

  @override
  void initState() {
    _visible = true;
  }

  void toggleVisible() {
    setState(() {
      _visible = !_visible;
    });
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
              Opacity(
                opacity: _visible ? 1.0 : 0.2,
                child: Text('Add Widget Here'),
              ),
              ElevatedButton(onPressed: toggleVisible, child: Text("Visible"))
            ],
          ),
        ),
      ),
    );
  }
}
