import 'package:flutter/material.dart';
import './firstPage.dart' as firstpage;
import './secondPage.dart' as secondpage;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal
      ),
      home:  MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController tapController;

  @override
  void initState() {
    super.initState();
    tapController = new TabController(vsync: this,length: 2);
  }

  @override
  void dispose() {
    tapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Tap App'),
        backgroundColor: Colors.teal,
        // bottom: new TabBar(
        //   controller: tapController,
        //   tabs:<Widget>[
        //     new Tab(icon: Icon(Icons.access_alarm)),
        //     new Tab(icon: Icon(Icons.account_balance)),
        //   ]
        // )
      ),
      bottomNavigationBar: new Material(
        color: Colors.teal,
        child: new TabBar(
          controller: tapController,
          tabs:<Widget>[
            new Tab(icon: Icon(Icons.access_alarm)),
            new Tab(icon: Icon(Icons.account_balance)),
          ],
        )
      ),
      body: new TabBarView(
        controller: tapController,
        children: <Widget>[
          new firstpage.FirstPage(),
          new secondpage.SecondPage(),
        ],
      )
    );
  }
}