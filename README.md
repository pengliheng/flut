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


### dart 中的参数传递
当你希望传递的是对象的时候. 调用这个函数需要传递的参数是可选的. device参数可选不传
```dart
void isNoble({int atomicNumber ,String device='12'}) {
  print('3e23$device');
  assert(1==2);
} 

main(List<String> args) {
  isNoble(atomicNumber: 23245');
}
```

`{}`只能放置于参数的两头,如果想要单独一个参数作为对象来传递,
```
Map<String,String> gifts = const {
  'first': 'paper'
}
```


如果传递的不是对象参数,这个时候可以有可选参数
```dart
void isNoble(int atomicNumber,[String device='12']) {
  print('3e23');
  assert(1==2);
}
main(List<String> args) {
  isNoble(23245);  // 如果不传参数,那么第二个参数 device就会变成默认参数12
  isNoble(23245,'sdfasdf');   // 如果传递参数,那个sdfgsdfa就会取代第二个参数的默认值
}
```

传递List数组以及Map对象的时候
```dart
void doStuff(List<int> list, Map<String,int> gifts){
  print('list:  $list');
  print(list);
  print('gifts: $gifts');
  print(gifts);
}

main(List<String> args) {
  doStuff([1,2,3,4,5],{
    'sdf':1234,
    'wer':1234,
    'rger':1234,
  });
}
```


以对象形式传递参数

```dart
void doStuff({List<int> list=const[1,2,3,5,6], Map<String,int> gifts=const{
  'sdf':1234,
}}){
  print('list:  $list');
  print(list);
  print('gifts: $gifts');
  print(gifts);
}
main(List<String> args) {
  doStuff(
    list:[1,2,3,4,5],
    gifts:{
      'sdf':1234,
      'wer':1234,
      'rger':1234,
    }
  );
}
```


### dart位移运算
```dart
final value = 0x22;     // 0010 0010
final bitmask = 0x0f;   // 0000 1111

assert((value & bitmask) == 0x02); // AND       => 0000 0010 => 0x02
assert((value & ~bitmask) == 0x20); // AND NOT  => 0010 0000 => 0x20
assert((value | bitmask) == 0x2f); // OR        => 0010 1111 => 0x2f
assert((value ^ bitmask) == 0x2d); // XOR       => 0010 1101 => 0x2d
assert((value << 4) == 0x220); // Shift left    => 0010 0010 0000 => 0x220
assert((value >> 4) == 0x02); // Shift right    => 0000 0010 => 0x02
```

### dart 中的符号
```dart
a = value;      // 
b ??= value;    // 仅仅当b为null的时候,赋值
```

### dart 中的未定义
相比于JavaScript,不止强了一点半星
```dart
var test;
print(test);    // null

var name=21;
name = name ?? 'guse';   // 21

var name;
name = name ?? 'guse';   // 'guse'

```

### dart 中的链式调用
```dart
class A {
  void aaa (){
    print('aaa');
  }
  void bbb (){
    print('bbb');
  }
  void ccc (){
    print('ccc');
  }
  void ddd (){
    print('ddd');
  }
  void eee (){
    print('eee');
  }
  void baz(){}
}
var a = A();
main(List<String> args) {
  a
    ..aaa()       // aaa
    ..bbb()       // bbb
    ..ccc()       // ccc
    ..ddd()       // ddd
    ..eee()       // eee
    ..bbb();      // bbb
};
```



### dart 中的类
```dart
import 'dart:math';

class Point {
  final num x;
  final num y;
  final num distanceFromOrigin;

// Point 的构造器
  Point(x,y)
    : x = x,
      y = y,
      distanceFromOrigin = sqrt(x*x+y*y);
}


main(List<String> args) {
  var p = new Point(2,3);
  print(p.distanceFromOrigin);
}
```



### 重定向的构造器
```dart
// 重定向的构造函数
class Point {
  num x,y;
  // The Main construcgtor for this class.
  // 这个类的主构造器
  Point(this.x, this.y);
  // Delegates to the main constructor.
  // 委托给构造函数
  Point.alongXaxis(num x){
    print(x);
  } 
}
dynamic point = Point(1,2);   // 构造器未声明可用 var 但不能是const
main(List<String> args) {
  print(point.aaa());
}
```


### 不可改变的构造器
```dart
// 一直不变的构造器
class ImmutablePoint {
  static final ImmutablePoint origin = 
    const ImmutablePoint(0, 0);
  final num x,y;
  const ImmutablePoint(this.x, this.y);
   aaa(){
    print('aaa');
    return '2345';
  }
}
const point = ImmutablePoint(1,2);  // 由于是const的构造器,所以只能用const来命名, 或者var
main(List<String> args) {
  print(point.aaa());
}
```



### 工厂构造函数
```dart
// 工厂构造器
class Logger {
  final String name;
  bool mute = false;
  // _cache is library-private, thanks to the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }
  Logger._internal(this.name);
  void log(String msg) {
    if(!mute) {
      print(msg);
    }
  }
}
var logger = Logger('UI');
main(List<String> args) {
  logger.log('asfdbg');
}
```



### dart 中的 class 中的方法
```dart
import 'dart:math';
class Point {
  num x,y;
  // dart 的构造函数
  Point(this.x, this.y);
  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx*dx + dy*dy);
  }
}
main(List<String> args) {
  var point = new Point(0, 0);
  print(point.distanceTo( Point(3,4)));
}
```


### @override -> 子类方法可以覆盖父类方法
```dart
class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }
  // ···
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }

// 子类方法可以覆盖父类
  @override
  void turnOn(){
    //
  }
  // ···
}
```


### 泛型
```dart
// 接受字符串key值
// 可被<String, Object> 设置
abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}
// 接受字符串 的key值
// 可被<String, String> 设置
abstract class StringCache {
  Object getByKey(String key);
  void setByKey(String key, String value);
}
// 下面你决定你想要一个特殊数字版本
// 泛型能省去你的所有的创建这些接口的麻烦. 相反,你能创建一个带有类型限制的接口
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}
// 上面的代码, T 是一个替代类型,它是一个占位符,您可以将其视为开发人员稍后定义的类型.
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



### 阶级跃迁
天天敲代码.
在我的想象中,我是一位上将,因为阶级的固化,因此我只能想像,不知不觉演了起来.定制了一套军装,买了个假身份证,我开始深入的演了起来,进到某军区,对着门卫,趾高气扬的走了过去,说:"你不知道我是谁?"
这是我唯一获得**阶级跃迁**的机会.如果努力不能获得提升,那又为什么努力.