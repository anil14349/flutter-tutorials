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

class _State extends State<MyApp> with TickerProviderStateMixin{

  late Animation animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 10000));
    final CurvedAnimation curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = Tween(begin: 0.0, end: 300.0).animate(curve);
    controller.forward();
  }

  Widget builder(BuildContext context, Widget? child){

    return Container(
      height: animation.value,
      width: animation.value,
      child: const FlutterLogo(),
    );

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
          child: AnimatedBuilder(animation: animation, builder: builder,),
        ),

      ),
    );
  }


}


