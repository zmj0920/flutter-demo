import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: Center(
            child: Text(
          'Dart是由谷歌开发的计算机编程语言,它可以被用于web、服务器、移动应用 和物联网等领域的开发。 Dart诞生于2011年，号称要取代JavaScript 要学Flutter的话我们必须首先得会Dart',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.red,
            // decoration: TextDecoration.underline,
            // decorationStyle: TextDecorationStyle.solid,
          ),
        )),
      ),
    );
  }
}
