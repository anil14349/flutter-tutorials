import 'dart:async';
import 'time_display.dart';
import 'package:flutter/material.dart';



class TimeCounter extends StatefulWidget{
  const TimeCounter({Key? key}) : super(key: key);
  @override
  _TimeCounterState createState() => _TimeCounterState();

}

class _TimeCounterState extends State<TimeCounter>{
  late Stopwatch _watch;
  late Timer _timer;
  late Duration _duration;

  void _onStart(){
    setState(() {
      _watch = Stopwatch();
      _timer = Timer.periodic(const Duration(milliseconds: 250), _onTimeout);
    });
    _watch.start();
  }

  void _onStop(){
    _timer.cancel();
    _watch.stop();
  }

  void _onTimeout(Timer timer){
    if(!_watch.isRunning) return;
    setState(() {
      _duration = _watch.elapsed;
    });
  }

  void _onClear(Duration value){
    setState(() {
      _duration = const Duration();
    });
  }

  @override
  void initState() {
    _duration = const Duration();
  }

  @override
  Widget build(BuildContext context){

    Container container = Container(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: <Widget>[
            TimeDisplay( color: Colors.red, duration: _duration, onClear: _onClear),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
              Padding(padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(onPressed: _onStart, child: const Text("Start"),),
              ),
              Padding(padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: _onStop, child: const Text("Stop"),),
              ),

            ],)
          ],
        ),
      ),
    );


    return container;
  }

}


