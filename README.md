### Flutter 项目试水



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
