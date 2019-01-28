import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
import 'package:english_words/english_words.dart'; // 在配置文件引入这个包之后需要在项目中使用这个包

import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'Echo_class.dart';
import 'CounterWidget.dart';
import 'TapboxA.dart';
import 'TapboxB.dart';
import 'TapboxC.dart';
import 'TextTest.dart';
import 'ButtonTest.dart';
import 'ImageTest.dart';

//Future<String> loadAssets() async {
//  return await rootBundle.loadString('assets/config.json');
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "new_page": (context) => NewRoute(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // 自定义变量

  void _incrementCounter() {
    // 自定义函数
    setState(() {
      _counter++;
    });
  }

  @override // 重写build方法，会在状态改变之后进行调用
  Widget build(BuildContext context) {
    // build 方法总是返回一个widget
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "new_page");
              },
            ),
            FlatButton(
              child: Text('open new Echo route'),
              textColor: Colors.red,
              onPressed: () {
//                Navigator.pushNamed(context, "new_page");
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new EchoRoute("这是一个EchoRoute页面");
                }));
              },
            ),
            RandomWordsWidget(),
            FlatButton(
              child: Text("open new route for a icon"),
              textColor: Colors.amber,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new imageRoute();
                }));
              },
            ),
            FlatButton(
              child: Text("open new route for a icon"),
              textColor: Colors.cyan,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new Echo(text: "hello world!");
                }));
              },
            ),
            FlatButton(
              child: Text("open new CounterWidgetRoute"),
              textColor: Colors.deepOrange,
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) {
                  return new CounterWidgetRoute();
                }));
              },
            ),
            FlatButton(
              child: Text("open route of TapboxA"),
              textColor: Colors.teal,
              onPressed: () {
                Navigator.push(context,
                new MaterialPageRoute(builder: (context) {
                  return new TapboxA();
                }));
              },
            ) ,
            FlatButton(
              child: Text("open route of TapboxB"),
              textColor: Colors.tealAccent,
              onPressed: () {
                Navigator.push(context,
                new MaterialPageRoute(builder: (context) {
                  return new ParentWidget();
                }));
              },
            ),
            FlatButton(
              child: Text("open route of TapboxC"),
              textColor: Colors.lightGreen,
              onPressed: () {
                Navigator.push(context,
                new MaterialPageRoute(builder: (context) {
                  return new ParentWidgetC();
                }));
              },
            ),
            FlatButton(
              child: Text("open route of TextTest"),
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(context,
                new MaterialPageRoute(builder: (context) {
                  return new TextTest();
                }));
              },
            ),
            FlatButton(
              child: Text("open route of ButtonTest"),
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(context,
                new MaterialPageRoute(builder: (context) {
                  return new ButtonTest();
                }));
              },
            ),
            FlatButton(
              child: Text("open route of ImageTest"),
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(context,
                new MaterialPageRoute(builder: (context) {
                  return new ImageTest();
                }));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterWidgetRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterWidget();
//    return Text("xxx");
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Center(
        child: Text("这是一个新页面"),
      ),
    );
  }
}

class EchoRoute extends StatelessWidget {
  EchoRoute(this.tip);

  final String tip;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Echo Route"),
      ),
      body: Center(
        child: Text(tip),
      ),
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}

class imageRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return new DecoratedBox(
//        decoration: new BoxDecoration(
//            image: new DecorationImage(
//                image: new AssetImage('images/my_icon.png')
//            )
//        )
//    );
    return Image.asset('images/my_icon.png');
  }
}
