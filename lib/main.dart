import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:io';
// import 'dart:convert';

var httpClient = new HttpClient();

void main() => runApp(MyApp());

var dio = new Dio();

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String url = 'https://randomuser.me/api/?results=5';
  List data;

  Future<Object> makeRequest() async {
    var response = await dio.get(Uri.encodeFull(url));

    setState(() {
      var extractata = response.data;
      data = extractata['result'];
    });
    data = response.data['results'];
    return data[0];
  }

  @override
  void initState() {
    super.initState();
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('列表页面'),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, i) {
          print(context);
          return new ListTile(
            title: new Text(data[i]['name']["first"]),
            subtitle: new Text(data[i]['name']["first"]),
            leading: new CircleAvatar(
              backgroundImage: new NetworkImage(data[i]['picture']['thumbnail']),
            ),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (BuildContext context) =>new SecondPage(data[i])
                )
              );
            },
          );
        },
      )
    );
  }
}
class SecondPage extends StatelessWidget {
  SecondPage(this.data);
  final data;
  @override
  Widget build(BuildContext context)=>new Scaffold(
    appBar: AppBar(
      title: Text('详情页面'),
    ),
    body: new Center(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            width: 150,
            height: 150,
            decoration: new BoxDecoration(
              color: Colors.red,
              image: new DecorationImage(
                image: new NetworkImage(data["picture"]['large']),
                fit: BoxFit.cover
              ),
              borderRadius: new BorderRadius.all(new Radius.circular(75.0)),
              border: new Border.all(
                color: Colors.red,
                width: 4.0,
              )
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                '姓名:',
                // style: FontWeight,
              ),
              Text('${data['name']['first']} ${data['name']['last']}')
            ],
          )
        ],
      ),
    ) 
  );
}