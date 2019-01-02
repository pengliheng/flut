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
  _MyHomePageState createState() => new _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: Text('My First App'),
        ),
      ),
      body: _MyList()
    );
  }
}



class _MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      padding: EdgeInsets.all(4),
      itemBuilder: (context, i){
        return new ListTile(
          title: new Text("Some Random Username"),
          subtitle: Text(
            'Online  ->  $i',
            style: new TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.green[400]
            ),
          ),
          leading: const Icon(Icons.face),
          trailing: new RaisedButton(
            child: new Text('Remove'),
            onPressed: (){
              deleteDialog(context).then((value){
                print('Value is $value');
              });
              print('your press this button');
            },
          ),
        );
      },
    );
  }
}



Future<bool> deleteDialog(BuildContext context) {
  return showDialog(
    context: context,
    // 点击其他界面触发隐藏弹出框
    barrierDismissible: false,
    builder: (BuildContext context) {
      return new AlertDialog(
        title: Text('are u sure?'),
        actions: <Widget>[
          new FlatButton(
            child: new Text('Yes'),
            onPressed: (){
              Navigator.of(context).pop(true);
            },
          ),
          new FlatButton(
            child: new Text('No'),
            onPressed: (){
              Navigator.of(context).pop(false);
            },
          ),
        ]
      );
    }
  );
}