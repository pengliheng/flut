import 'package:flutter/material.dart';
// import 'dart:convert';


void main() => runApp(MyApp());


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

class _MyHomePageState extends State<MyHomePage>{
  final textCtrl = new TextEditingController();
  String inputstr;
  String radioval;
  bool enabled = false;
  bool expanded = false;
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('input widget'),
      ),
      body: new Container(
        margin: EdgeInsets.all(20),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              onChanged: (String textinput) {
                setState(() {
                  inputstr = textCtrl.text.length.toString();
                  // inputstr = textinput;
                });
              },
              controller: textCtrl,
            ),
            new Text(inputstr),
            new Switch(
              value: enabled,
              onChanged: (bool val) {
                setState(() {
                  enabled = val;
                  print(enabled);
                });
              },
              activeColor: Colors.green,
              activeTrackColor: Colors.greenAccent[400],
            ),
            new ExpansionPanelList(
              expansionCallback: (i,bool val) {
                setState(() {
                  expanded = !val;
                });
              },
              children: [
                new ExpansionPanel(
                  body: new Container(
                    padding: EdgeInsets.all(20.0),
                    child: new Text('Hello'),
                  ),
                  headerBuilder: (BuildContext context, bool val) {
                    return new Center(
                      child: Text(
                        'Tap on me',
                        style: new TextStyle(
                          fontSize: 18.0
                        )
                      ),
                    );
                  },
                  isExpanded: expanded,
                ),
              ],
            ),
            new Checkbox(
              onChanged: (bool val){
                setState(() {
                  checked = val;
                });
              },
              value: checked,
              activeColor: Colors.purple
            ),
            new Row(
              children: <Widget>[
                new Radio(
                  onChanged: (String val){
                    setRadioValue(val);
                  },
                  activeColor: Colors.red,
                  groupValue: radioval,
                  value: "First"
                ),
                new Radio(
                  onChanged: (String val){
                    setRadioValue(val);
                  },
                  activeColor: Colors.red,
                  groupValue: radioval,
                  value: "Second"
                ),
                new Radio(
                  onChanged: (String val){
                    setRadioValue(val);
                  },
                  activeColor: Colors.red,
                  groupValue: radioval,
                  value: "Third"
                ),
              ],
            )
          ],
        ),
      )
    );
  }

  setRadioValue(String value) {
    setState(() {
          radioval = value;
          print(radioval);
        });
  }
}


