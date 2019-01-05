import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:io';




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





class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  String url = 'https://randomuser.me/api/';

  dynamic info = {
    'name': {
      'first': '',
      'last': '',
    }
  };
  
  Future<Object> makeRequest() async {
    var response = await dio.get(Uri.encodeFull(url));
    print("====================================");
    List data;
    data = response.data['results'];
    print(data[0]['name']["first"]);
    info = data[0];
    return data[0]['name']["first"];
  }


  @override
  Widget build(BuildContext context) {

    Container infoContainer(info){
      return Container(
        color: Colors.red,
        height: 100,
        child: Column(
          children: <Widget>[
            Text('姓名:${info["name"]}'),
            Row(
              children: <Widget>[
              ],
            )
          ],
        ),
      );
    }


    return Scaffold(
      // appBar: Text('data'),
      body:Container(
        width: 420,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            infoContainer({'name': info?.name,}),
            RaisedButton(
              child: new Text('刷新'),
              onPressed: makeRequest,
            )
          ],
        ),
      ) 
    );
  }
}



// class InfoContainer extends StatelessWidget {
  
//   InfoContainer(@required this.info);
//   final info;

//   @override
//   Widget build(BuildContext context) {
//     // return ;
//   }
// }