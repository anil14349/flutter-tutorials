import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  String _value = "Time Here";
  Timer? _timer;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 1), _onTimer);
  }

  void _onTimer(Timer timer) {
    var now = DateTime.now();
    var fomatter = DateFormat('hh:mm:ss');
    String formatted = fomatter.format(now);
    setState(() {
      _value = formatted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _value,
      style: const TextStyle(fontSize: 32.0),
    );
  }
}
