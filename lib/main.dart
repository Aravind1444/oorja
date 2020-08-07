import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:oorja/navscreen.dart';

import 'gooey.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Gooey(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Image(
            height: double.maxFinite,
            image: AssetImage('images/oorja.png'),
          ),
        ),
      ),
    );
  }
}