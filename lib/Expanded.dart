import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Row')),
      body: LayoutDemo1(),
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
      crossAxisAlignment: CrossAxisAlignment.end, //用的比较少
      children: <Widget>[
        Expanded(
          //元素站整个父 Row /Column 的比例
          flex: 1,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.pink,
          ),
        ),
         Expanded(
          flex: 2,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class LayoutDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //主轴的排序方式
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //次轴的排序方式
      crossAxisAlignment: CrossAxisAlignment.end, //用的比较少
      children: <Widget>[
        Expanded(
          //元素站整个父 Row /Column 的比例
          flex: 1,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.pink,
          ),
        ),
         Expanded(
          flex: 2,
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
