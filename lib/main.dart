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
  // 相对间隔
  double eachItemPaddingValue = 2.0;
  ListContainer({@required this.count});
  var count;
  @override
  Widget build(BuildContext context) {
    double vw = MediaQuery.of(context).size.width;
    imageContent(int index, bool isBlock, [bool isAddBtn = false]) {
      return new Expanded(
        flex: 1,
        child: Container(
          height: ((vw - eachItemPaddingValue*2)/3),
          padding: EdgeInsets.all(eachItemPaddingValue),
          child: isBlock ? Image.asset(
            'assets/${index+1}.jpg',
            fit: BoxFit.cover,
          ) : Container()
        )
      );
    }

    _buildGridTileRow(int cols, int total) {
      List<Widget> ListMyWidgets(){
        List<Widget> list = new List();
        var colNum = total - (cols * 3);
        if(colNum>3){
          colNum = 3;
        }
        for (var i = 0; i < 3; i++) {
          if(cols==0 && i==0){
            list.add(new Expanded(
              flex: 1,
              child: Container(
                height: ((vw - eachItemPaddingValue*2)/3),
                padding: EdgeInsets.all(eachItemPaddingValue),
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Container(
                      child: Icons.add
                    ),
                  ),
                )
              )
            ));
          } else {
            list.add(imageContent(3*cols+i,colNum>i));
          }
        }
        return list;
      }
      return new Row(
        children: ListMyWidgets(),
      );
    }

    /* 
     * require            count                     总数
     * todo               loop                      传递参数 -> 
     * througt            当前行 个数                 传递参数 -> 
     * return             widget
     */
    _buildGridTileList(int count) {
      final cols = 1 + count~/3;
      return new List<Container>.generate(
        cols, 
        (int index) => new Container(         // 循环多少行
          child: _buildGridTileRow(index , count)
        )
      );
    }
    return new Container(
      padding: EdgeInsets.all(eachItemPaddingValue),
      color: Colors.red,
      child: ListView(
        children: _buildGridTileList(this.count)
      )
    );
  }
}