import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('上传图片'),
        ),
        body: ListContainer(count: 10),
      )
    );
  }
}




class ListContainer extends StatelessWidget {

  ListContainer({@required this.count});
  final count;
  // List<Container> _buildGridTileList(int count) {
  //   return new List<Container>.generate(count, 
  //     (int index) => new Container(
  //       // width: 100,
  //       child: new Row(
  //         children: <Widget>[
  //           imageContent(index),
  //           imageContent(index+1),
  //           imageContent(index+2),
            
  //         ],
  //       )
  //     )
  //   );
  // }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    imageContent(int index) {
      return new Expanded(
        flex: 1,
        child: Container(
          height: 150,
          padding: EdgeInsets.all(2),
          child: Image.asset(
            'assets/${index+1}.jpg',
            fit: BoxFit.cover,
          )
        )
      );
    }

    _buildGridTileRow(int index) {
      return new Row(
        children: <Widget>[
          imageContent(3 * index),
          imageContent(3 * index + 1),
          imageContent(3 * index + 2),
        ],
      );
    }

    _buildGridTileList(int count) {
      final cols = 1 + count~/3;
      return new List<Container>.generate(cols, 
        (int index) => new Container(
          // width: 100,
          child: _buildGridTileRow(index)
        )
      );
    }
    return new Container(
      padding: EdgeInsets.all(2),
      color: Colors.red,
      child: ListView(
        children: _buildGridTileList(this.count)
      )
    );
  }
}