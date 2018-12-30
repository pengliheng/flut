// This example shows a [Scaffold] with an [AppBar], a [BottomAppBar] and a
// [FloatingActionButton]. The [body] is a [Text] placed in a [Center] in order
// to center the text within the [Scaffold] and the [FloatingActionButton] is
// centered and docked within the [BottomAppBar] using
// [FloatingActionButtonLocation.centerDocked]. The [FloatingActionButton] is
// connected to a callback that increments a counter.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// 主模块
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Leayout demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
              title: Text('Top Lakes'),
          ),
          body: ListView(
              children: [
                Image.asset(
                    'assets/lake.jpg',
                    fit: BoxFit.cover,
                ),
                TitleSection(),
                ButtonColumn(),
              ]
          ),
      ),
    );
  }
}


// 模块三
class ButtonColumn extends StatelessWidget {
    @override
    ButtonColumn({@required this.icon, @required this.label});
    final icon
    final label
    Widget build(BuildContext context) {
        Color color = Theme.of(context).primaryColor;
        return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Icon(icon: this.icon, color: color),
                Container(
                    margin: const EdgeInsets.only(top: 8.0),
                    child: Text(
                        label: this.label,
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: color,
                        ),
                    ),
                ),
            ],
        );
    }
}
   
// 模块二
class TitleSection extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return new Container(
            padding: const EdgeInsets.all(32.0),
            child: Row(children: <Widget>[
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Container(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                    'Oeschinen Lake Campground',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),
                            ),
                            Text(
                                'Kandersteg, Switzerland',
                                style: TextStyle(
                                    color: Colors.grey[500]
                                ),
                            )
                        ],
                    ),
                ),
                Icon(
                    Icons.star,
                    color: Colors.red[500],
                ),
                Text('41')
            ],),
        );
    }
}
   