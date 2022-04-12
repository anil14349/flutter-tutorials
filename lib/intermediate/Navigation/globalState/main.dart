import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/second.dart';
import './screens/third.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(title: 'Navigation',
      home:  const Home() ,
      routes:<String,WidgetBuilder> {
      '/Home' : (BuildContext context) =>  const Home(),
        '/Second' : (BuildContext context) =>  const Second(),
        '/Third' : (BuildContext context) =>  const Third(),
      },
    );

  }

}


