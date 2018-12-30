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
                ButtonSection(),
                TextSection(),
              ]
          ),
      ),
    );
  }
}

// 文字模块
class TextSection extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        return Container(
            padding: const EdgeInsets.all(32.0),
            child: Text(
                '''
                Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
                ''',
                softWrap: true,
            ),
        );
    }
}

// 模块四
class ButtonSection extends StatelessWidget {
    @override
    // ButtonColumn({@required this.icon, @required this.label});
    // final icon
    // final label
    Widget build(BuildContext context) {
        Column buildButtonColumn(IconData icon, String label){
            Color color = Theme.of(context).primaryColor;
            return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(icon, color: color),
                    Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        child: Text(
                            label,
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: color,
                            ),
                        ),
                    ),
                ],
            );
        };

        return Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                    buildButtonColumn(Icons.call,'CALL'),
                    buildButtonColumn(Icons.near_me,'ROUTE'),
                    buildButtonColumn(Icons.share,'SHARE'),
                ],
            )
        );
    }
}


// 模块三
class ButtonColumn extends StatelessWidget {
    @override
    var icon;
    var label;
    ButtonColumn(@required this.icon, @required this.label);
    Widget build(BuildContext context) {
        Color color = Theme.of(context).primaryColor;
        return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Icon(this.icon, color: color),
                Container(
                    margin: const EdgeInsets.only(top: 8.0),
                    child: Text(
                        this.label,
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
   