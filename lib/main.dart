import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    int index = 0;
    String view = '';
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
                    child: 
                ),
            )
        );
    }
}


class Keyborad extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Container(
            // margin: const EdgeInsets.all(10.0),
            color: const Color(0xFFFFFFFF),
            child: new Center(
                child: new Container(
                    decoration: const BoxDecoration(
                        // border: Border(
                        //     top: BorderSide(width: 2.0, color: Colors.grey),
                        // ),
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
                    margin: const EdgeInsets.fromLTRB(0, 400, 0, 0),
                    // width: 48.0,
                    // height: 48.0,
                    child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                            new Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '7',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '4',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '1',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '.',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                ],
                            ),
                            new Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '8',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '5',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '2',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '0',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                ],
                            ),
                            new Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '9',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '6',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '3',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '=',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                ],
                            ),
                            new Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    // ['DEL','+','-','×','÷'].map((item)=>new Expanded(
                                    //     child: Container(
                                    //         child: CustomCard(
                                    //             index: 'DEL',
                                    //         ),
                                    //         color: Colors.white,
                                    //     ),
                                    // )),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: 'DEL',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '÷',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '×',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '-',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                    new Expanded(
                                        child: Container(
                                            child: CustomCard(
                                                index: '+',
                                            ),
                                            color: Colors.white,
                                        ),
                                    ),
                                ],
                            ),
                        ],
                    ),
                ),
            )
        );
    }
}

class CustomCard extends StatelessWidget {
    CustomCard({@required this.index, @required this.onPress});

    final index;
    final Function onPress;

    @override
    Widget build(BuildContext context) {
        return Card(
            child: FlatButton(
                child: new Text(
                    index,
                    style: TextStyle(fontSize: 32.0),
                ),
            ));
    }
}

// Usage
