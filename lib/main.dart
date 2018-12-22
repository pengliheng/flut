

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}


class RandomWordsState extends State<RandomWords> {
  // TODO Add build() method
  final _suggestions = <WordPair>[];
  final _binggerFont = const TextStyle(fontSize: 18.0);
   @override
   Widget build(BuildContext context) {
     final wordPair = WordPair.random();
     return Text(wordPair.asPascalCase);
   }
  //  RandomWordsState createState() => new RandomWordsState();
}



class RandomWords extends StatefulWidget {
  // TODO Add build() method
   @override
   RandomWordsState createState() => new RandomWordsState();
}