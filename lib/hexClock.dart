import 'dart:async';
import 'package:flutter/material.dart';


class SimpleClock extends StatefulWidget {
  _SimpleClockState createState() => _SimpleClockState();
}

class _SimpleClockState extends State<SimpleClock> {
  String _now;
  Timer _everySecond;

  @override
  void initState() {
    super.initState();
    _now = _timeToString(DateTime.now());
    _everySecond = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (!mounted) return;
      setState(() {
        _now = _timeToString(DateTime.now());
      });
    });
  }

  String _timeToString(DateTime now) {
    String timeString =
        "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
    return timeString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(

        child: Container(
          padding: EdgeInsets.all(100),
          child: Text(
            _now,

            style: TextStyle(
              fontSize: 50,
              fontFamily: "Helvetica",
              fontWeight: FontWeight.w300,


            ),
          ),
        ),
      ),
    );
  }
}