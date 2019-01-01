### flutter 中的生命周期

![image](https://upload-images.jianshu.io/upload_images/2751425-ae1b771bf9841dc8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/856/format/webp)



#### 1.create widget 
创建widget
#### 2.initState 
初始化
#### 3.didChangeDependencies 
改变依赖之后
#### 4.build
build树




#### 5.render tree
渲染树

- 更新的话
  #### 6.didUpdateWidget
  更新树
  #### 7.build
  重建build树


- 移除的话
  #### 6.remove widget
  移除 widget
  #### 7.deactivate
  关闭
  #### 8.dispose
  部署



#### 用于实验生命周期真实存在的代码

```dart
import 'package:flutter/material.dart';

class LifecycleAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LifecycleAppPageState('构造函数');
  }
}

class _LifecycleAppPageState extends State<LifecycleAppPage>
    with WidgetsBindingObserver {
  String str;

  int count = 0;

  _LifecycleAppPageState(this.str);

  @override
  void initState() {
    print(str);
    print('initState');
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(LifecycleAppPage oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        print('AppLifecycleState.inactive');
        break;
      case AppLifecycleState.paused:
        print('AppLifecycleState.paused');
        break;
      case AppLifecycleState.resumed:
        print('AppLifecycleState.resumed');
        break;
      case AppLifecycleState.suspending:
        print('AppLifecycleState.suspending');
        break;
    }

    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('lifecycle 学习'),
        centerTitle: true,
      ),
      body: new OrientationBuilder(
        builder: (context, orientation) {
          return new Center(
            child: new Text(
              '当前计数值：$count',
              style: new TextStyle(
                  color: orientation == Orientation.portrait
                      ? Colors.blue
                      : Colors.red),
            ),
          );
        },
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Text('click'),
          onPressed: () {
            count++;
            setState(() {});
          }),
    );
  }
}

class LifecyclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new LifecycleAppPage(),
    );
  }
}
```







### flutter 中的绝对定位