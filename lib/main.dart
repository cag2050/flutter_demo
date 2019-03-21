import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_demo/SwitchAndCheckBoxTestRoute.dart';
import 'FormTestRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //注册路由表
      routes: {
        "new_page": (context) => NewRoute(),
        "form_demo": (context) => FormTestRoute(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 生成随机字符串
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}

class ImageDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Image(
        image: AssetImage('assets/girl.jpg'),
        width: 200.0,
        fit: BoxFit.contain);
  }
}

class IconDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.accessible,
          color: Colors.green,
        ),
        Icon(
          Icons.error,
          color: Colors.green,
        ),
        Icon(
          Icons.fingerprint,
          color: Colors.green,
        ),
      ],
    );
  }
}

class RaisedButtonDemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("normal"),
      onPressed: () => {},
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "new_page");
                //导航到新路由
//                Navigator.push(context,
//                    new MaterialPageRoute(builder: (context) {
//                      return new NewRoute();
//                    })
//                );
              },
            ),
            FlatButton(
              child: Text("open form_demo route"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "form_demo");
              },
            ),
            RandomWordsWidget(),
            ImageDemoWidget(),
            RaisedButtonDemoWidget(),
            IconDemoWidget(),
            SwitchAndCheckBoxTestRoute(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
