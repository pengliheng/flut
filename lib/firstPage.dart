import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text('1',
            style: new TextStyle(fontSize: 25.0, color: Colors.purple)),
      ),
    );
  }
}
