import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 相对间隔
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    color: Colors.yellow[600],
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 130.0,
                    child: Opacity(
                      opacity: 0.3,
                      child: Container(
                        height: 400.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: Colors.yellow[300],
                        ),
                      ),
                    ) 
                  ),
                  Positioned(
                    bottom: 120.0,
                    left: 230.0,
                    child: Opacity(
                      opacity: 0.3,
                      child: Container(
                        height: 250.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: Colors.yellow[300],
                        ),
                      ),
                    ) 
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(width: 15),
                      Container(
                        alignment: Alignment.topLeft,
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          image: DecorationImage(
                            image: AssetImage('assets/avatar.jpeg',)
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      )
    );
  }
}
