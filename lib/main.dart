

import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StartUp Name Generator',
      // theme: new ThemeData(
      //   primaryColor: Colors.white,
      // ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('计算器'),
        ),
        body: Center(
          child: new Container(
          // margin: const EdgeInsets.all(10.0),
          color: const Color(0xFFFFFFFF),
          child: new Center(
            child: new Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 2.0, color: Colors.grey),
                ),
                color: Colors.red,
              ),
              margin: const EdgeInsets.fromLTRB(0, 400, 0, 0),
              // width: 48.0,
              // height: 48.0,
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Text('1', textAlign: TextAlign.center),
                  ),
                  new Expanded(
                    child: new Text('2', textAlign: TextAlign.center),
                  ),
                  new Expanded(
                    child: new Text('2', textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          )
      ),
        ),
      )
      
    );
  }
}




class buttons extends StatelessWidget {
  @override
  Widget build
}