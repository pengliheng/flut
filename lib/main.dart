import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: Center(
          // width: 640,
          // color: Colors.red,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Strawberry Pavlova',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              new TextContent(),
              new DetailContent(),
            ],
          ),
        ),
      )
    );
  }
}




class DetailContent extends StatelessWidget {
  FeatureItemContent

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(50,0,50,10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              new Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Icon(Icons.star, color: Colors.green[500]),
                    new Icon(Icons.star, color: Colors.green[500]),
                    new Icon(Icons.star, color: Colors.black),
                    new Icon(Icons.star, color: Colors.black),
                    new Icon(Icons.star, color: Colors.black),
                  ]
                )
              ),
              Text(
                '170 Reviews',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0,32,0,0),
            // color: Colors.blue[100],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FeatureItemContent(icon: Icons.picture_as_pdf, label: 'PREP:',time:"25 min"),
                FeatureItemContent(icon: Icons.timelapse, label: 'PREP:',time:"25 min"),
                FeatureItemContent(icon: Icons.feedback, label: 'PREP:',time:"25 min"),
              ],
            ),
          )
        ],
      ),
    );
  }
}




class FeatureItemContent extends StatefulWidget {
  FeatureItemContent({@required this.icon,@required this.time,@required this.label});
  var icon;
  var time;
  var label;
  @override
  _FeatureItemContent createState() => new _FeatureItemContent(icon: this.icon, label: this.label,time:this.time);
}


class _FeatureItemContent extends State<FeatureItemContent> {
  _FeatureItemContent({@required this.icon,@required this.time,@required this.label});
  var icon;
  var time;
  var label;
  @override
  Widget build(BuildContext context) {
    print(this.icon);
    return Column(
      children: <Widget>[
        new Icon(this.icon, color: Colors.green[500]),
        Text("PREP:"),
        Text("25 min")
      ]
    );
  }
}










// 中间的段落模块
class TextContent extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(32.0,32,32.0,0.0),
      child: Text(
        '''
    Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding.
        ''',
        softWrap: true,
        style: TextStyle(
          fontSize: 16,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}