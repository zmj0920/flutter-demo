import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Row')),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //主轴的排序方式
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //次轴的排序方式
        crossAxisAlignment: CrossAxisAlignment.end,     //用的比较少
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.pink,
        ),
          Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
        ),
          Container(
          height: 100.0,
          width: 100.0,
          color: Colors.blue,
        ),
        
      ],
    );
  }
}
