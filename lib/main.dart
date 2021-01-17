import 'package:flutter/material.dart';
import 'package:flutter_app_first/hexClock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('DONT WASTE TIME'),
          backgroundColor: Colors.black87,
        ),
        body: Center(

          child: Column(

            children: [

              Center(child: SimpleClock()
              
              ),
            ],

          ),
        ),

      ),

    );
  }}
/*

return Stack(
alignment: Alignment.center,
children: <Widget>[
PageBG(),
SimpleClock(),
],
);*/