import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 相对间隔
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              // 所有可重叠的容器子元素
              // 1. 背景
              // 2. 竖向排列的
              Stack(
                children: <Widget>[
                  // 黄背景容器
                  Container(
                    height: 250.0,
                    color: Colors.yellow[600],
                  ),
                  // 大圈背景
                  Positioned(
                    bottom: 50.0,
                    right: 130.0,
                    child: Opacity(
                      opacity: 0.3,
                      child: Container(
                        height: 400.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: Colors.yellow[300],
                        ),
                      ),
                    ) 
                  ),
                  // 小圈背景
                  Positioned(
                    bottom: 120.0,
                    left: 200.0,
                    child: Opacity(
                      opacity: 0.3,
                      child: Container(
                        height: 270.0,
                        width: 270.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          color: Colors.yellow[300],
                        ),
                      ),
                    ) 
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // 顶部占位15px
                      SizedBox(height: 15.0),
                      // 其中一行
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/avatar.jpeg',)
                              )
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width - 120),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: (){},
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      // 底部占位50px
                      SizedBox(height: 50.0),
                      // 文本Hello , Pino
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Hello , Pino',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // 15px 占位
                      SizedBox(height: 15.0),
                      // 文本 What do you want to buy?
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          bottom: 15.0,
                        ),
                        child: Text(
                          'What do you want to buy?',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      // 15px 占位
                      SizedBox(height: 15.0),
                      // 输入文本框
                      Padding(
                        padding: EdgeInsets.only(left: 15.0,right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(5.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.yellow,
                                size: 30.0,
                              ),
                              // contentPadding: EdgeInsets.all(15.0),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                              )
                            ),
                          ),
                        ),
                      ),
                      // 10px 占位
                      SizedBox(height: 10.0)
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Stack(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Material(
                    elevation: 1.0,
                    child: Container(
                      height: 80.0,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/sofa.png'))
                              ),
                            ),
                            Text('Sofas',style: TextStyle(fontFamily: 'Quicksand'),)
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/wardrobe.png'))
                              ),
                            ),
                            Text('Wardrobe',style: TextStyle(fontFamily: 'Quicksand'),)
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/desks.png'))
                              ),
                            ),
                            Text('Desk',style: TextStyle(fontFamily: 'Quicksand'),)
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width/4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/dressers.png'))
                              ),
                            ),
                            Text('Dresser',style: TextStyle(fontFamily: 'Quicksand'),)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              itemCard('FinnNavian', 'assets/ottoman.jpg', false)
            ],
          )
        ],
      )
    );
  }



  Widget itemCard(String title, String imgPath, bool isFavorite) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        height: 150.0,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              width: 140.0,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(width: 4.0),
            Column(children: <Widget>[
              Row(children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ])
            ])
          ],
        ),
      ),
    );
  }
}


