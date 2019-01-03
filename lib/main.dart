import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Tap App'),
        backgroundColor: Colors.teal,
        bottom: new TabBar(
          tabs:<Widget>[
            new Tab(icon: Icon(Icons.access_alarm)),
            new Tab(icon: Icon(Icons.access_time)),
          ]
        )
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

