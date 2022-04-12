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

class _painter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final radius = 100.0;
    final Offset offset = new Offset(0.0, 75.0);
    final Paint paint = new Paint()
     ..isAntiAlias = true
     ..strokeWidth = 10.0
     ..color = Colors.blue
     ..style = PaintingStyle.stroke;

    final Offset bodystart = new Offset(0.0, 50.0);
    final Offset bodyend = new Offset(0.0, 0.0);

    canvas.drawCircle(offset, radius, paint);
    canvas.drawLine(bodystart, bodyend, paint);

    final Rect rect = Rect.fromCircle(center: offset, radius: radius);
    final Paint repaint = new Paint()
      ..isAntiAlias = true
      ..strokeWidth = 10.0
      ..color = Colors.orange
      ..style = PaintingStyle.stroke;

    canvas.drawRect(rect, repaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
        return false;
  }

}



class _State extends State<MyApp>{

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
              const Text("Hello World",style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
              CustomPaint(painter: _painter(),)
            ],
          ),
        ),

      ),
    );
  }

}


