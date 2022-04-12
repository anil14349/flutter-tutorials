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
  final TextEditingController _user = TextEditingController();
  final TextEditingController _pass = TextEditingController();

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
              const Text("Login Here"),
              Row(
                children: <Widget>[
                  const Text("username : "),
                  Expanded(
                      child: TextField(
                        controller: _user,
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  const Text("password : "),
                  Expanded(
                      child: TextField(
                        controller: _pass,
                        obscureText: true,
                      ))
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                    child: const Text("Click Me"),
                    onPressed: () => print(_user.text)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
