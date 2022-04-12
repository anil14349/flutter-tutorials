import 'package:flutter/material.dart';


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

class _State extends State<MyApp> with SingleTickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;


  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 5000),vsync: this);
    animation = Tween(begin: 0.0,end: 200.0).animate(controller);
    animation.addListener(() {
      setState(() {

      });
    });
    controller.forward();
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        height: animation.value,
        width: animation.value,
        child: Center(
          child: FlutterLogo(size: 300.0,),
        ),

      ),
    );
  }

}


