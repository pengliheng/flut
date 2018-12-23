### Flutter 项目试水

### keyword
- Scaffold: 脚手架

#### code解释
```dart
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
```

#### final and const
如果你永远不会改变变量,那么用`final`或者`const`,而不是`var`或者定义其他`String Array`特定类型.一个`final`变量只能被设置一次,而const变量则是编译时的常量,它是隐式的`final`
举个例子
```dart
final int m1 = 60;
final int m2 = Func(); // 正确
const int n1 = 42;
const int n2 = Func(); // 错误
```
也就是说,final是运行时才出现的,在运行阶段,它是不可改变的,而const是编译时就出现的常量,在编译阶段,就不可改变.



#### `@override` 覆盖顶级常量
java @override是什么意思 @Override简单理解就是这个句话下边的方法是继承父类的方法，对其覆盖Overload是重载的意思，Override是覆盖的意思，也就是重写。 重载Overload表示同一个类中可以有多个名称相同的方法，但这些方法的参数列表各不相同（即参数个数或类型不同）。

#### _下划线做变量开头
代表它对其库是私有的


### dart 中的类型推断

```dart
var str = '2134'; // 推断为int类型
str =  234567;    // A value of type 'int' can't be assigned to a variable of type 'String'
List arr = [1,2,3,4,6,7];
arr = 23456;      // A value of type 'int' can't be assigned to a variable of type 'List'
```


### code 案例
```dart
return ListView.builder(
  padding: const EdgeInsets.all(16.0),
  itemBuilder: /*1*/(context, i) {
    if(i.isOdd) return Divider(); /*2*/    // 分割线
    final index = i ~/ 2;/*3*/   // 获得当前是第几个列表
    if(index >= _suggestions.length) {
      _suggestions.addAll(generateWordPairs().take(10));  /*4*/
    }
    return _buildRow(_suggestions[index]);
  });
```

- 1.首先,这个`itemBuilder`回调函数,每次都会被调用, 并且根据不同的条件返回不同的列表.对于偶数,为每个单词添加一个ListTile行,对于奇数,函数添加一个Divider小框,来显示,分离整个列表.
- 2.偶数返回分割线
- 3.当前item 的 index
- 4.当下划之后,


#### Flutter 的分层设计 -> 简直不要太方便...
- 顶级组件  Row, Column   =>  <el-row/> 
  合理运用顶级组件,可快速构建应用

- 基础组件  Container   => <div></div>
  可以定制任何自己❤️的样式




#### Flutter's Layers
- Material 
- Widgets
- Rendering
- dart:ui




### Reference
[Flutter 中文网]https://flutterchina.club/tutorials/layout/