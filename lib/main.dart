import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: Text('My First App'),
        ),
      ),
      body: new Center(
        child: new Text(
          'Hello World',
          style: TextStyle(
            fontFamily: 'babas-neue',
            fontSize: 24.0,
            color: Colors.red
          ),
        ),
      ),
    );
  }
}

