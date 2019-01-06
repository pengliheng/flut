import 'package:flutter/material.dart';
// import 'dart:convert';
import './about.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  final textCtrl = new TextEditingController();
  String inputstr;
  String radioval;
  bool enabled = false;
  bool expanded = false;
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('SideMenu'),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Raja"),
              accountEmail: new Text("pengliheng111@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            new ListTile(
              title: Text('About Page'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, 
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new AboutPage()
                  )
                );
              }
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
              title: Text('About Page'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, 
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new AboutPage()
                  )
                );
              }
            )
          ],
        ),
      ),
    );
  }
}


