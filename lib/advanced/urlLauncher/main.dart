import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

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

  void _showUrl(){ _launch('https://www.voidrealms.com');}
  void _showSms(){_launch('sms:9700060850');}
  void _showTelephone(){_launch('tel:9700060850');}
  void _showEmail(){_launch('mailto:anil14349@gmail.com');}

  void _launch(String urlString) async{
    if(await launch(urlString)){
      await launch(urlString);
    } else {
      throw 'Could not Launch Url';
    }
  }

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: _showUrl, child: const Text('URL')),
              ElevatedButton(onPressed: _showEmail, child: const Text('Email')),
              ElevatedButton(onPressed: _showSms, child: const Text('Sms')),
              ElevatedButton(onPressed: _showTelephone, child: const Text('Telephone')),

            ],
          ),
        ),

      ),
    );
  }

}


