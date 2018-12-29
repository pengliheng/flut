import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'StartUp Name Generator',
            theme: new ThemeData(
              primaryColor: Colors.red,
            ),
            home: new MyHomePage()
        );
    }
}



class MyHomePage extends StatefulWidget {
  @override
  BodyState createState() => new BodyState();
}


class BodyState extends State<MyHomePage> {
    String view = '';
    // +
    void add(String index) {
        setState((){
            view+=index;
        });
    }
    // -
    void minus(String index) {
        setState((){
            view+=index;
        });
    }
    // x
    void multiplied(String index) {
        setState((){
            view+=index;
        });
    }
    // 
    void equal(String index) {
        setState((){
            view+=index;
        });
    }
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('calculator'),
            ),
            body: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                    new Expanded(
                        flex: 1,
                        child: new Container(
                            // color: Colors.black,
                            // color: Colors.lightBlueAccent,
                            child: new Center(
                                child: new Text(
                                    view,
                                    style: TextStyle(
                                        // color: Colors.white,
                                        fontSize: 32.0
                                    ),
                                ),
                            ),
                        )
                    ),
                    new Keyborad(add: add)
                ],
            )
        );
    }
}

// 底部键盘组件
class Keyborad extends StatelessWidget {
    Keyborad({@required this.add});
    var add;
    @override
    Widget build(BuildContext context) {
        return new Container(
            color: const Color(0xFFFFFFFF),   
            child: new Container(
                decoration: const BoxDecoration(
                color: Colors.white,
                    boxShadow: <BoxShadow>[
                        BoxShadow (
                            color: const Color(0xcc000000),
                            offset: Offset(0.0, 2.0),
                            blurRadius: 4.0,
                        ),
                        BoxShadow (
                            color: const Color(0x80000000),
                            offset: Offset(0.0, 6.0),
                            blurRadius: 20.0,
                        ),
                    ], 
                ),
                // margin: const EdgeInsets.fromLTRB(0, 400, 0, 0),
                // width: 48.0,
                height: 350.0,
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        new KeyboradColumn(arr: [{
                            'val':'7',
                            'func': add,
                        },'4','1','.']),
                        new KeyboradColumn(arr: ['8','5','2','0']),
                        new KeyboradColumn(arr: ['9','6','3','=']),
                        new KeyboradColumn(arr: ['Del','+','-','×','÷'])
                    ],
                ),
            ),
        );
    }
}

// 每一竖
class KeyboradColumn extends StatelessWidget {
    KeyboradColumn({@required this.arr});
    final arr;
    _getKeyBoradRow() {
        List<Widget> widgets = [];
        arr.forEach((e){
            widgets.add(
                new Expanded(
                    child: Container(
                        child: CustomCard(
                            index: e.val,
                        ),
                        color: Colors.white,
                    )
                )
            );
        });
        return widgets;
    }
    @override
    Widget build(BuildContext context) {
        return new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _getKeyBoradRow() ,
        );
    }
}


// 键盘里面的每一个格子
// 点击事件封装在这里
class CustomCard extends StatelessWidget {
    CustomCard({@required this.index, @required this.onPress, @required this.add});
    final index;
    final Function onPress;
    final add;

    @override
    Widget build(BuildContext context) {
        return Card(
            child: FlatButton(
                child: new Text(
                    index,
                    style: TextStyle(fontSize: 32.0),
                ),
                onPressed: (){
                    add(index);
                },
            )
        );
    }
}
