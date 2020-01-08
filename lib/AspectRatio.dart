import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(title: Text('AspectRatio')),
        body: LayoutDemo(),
      ));
  }
}
class LayoutDemo extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: AspectRatio(
        //宽高比
        aspectRatio: 1.0/1.0, 
        child: Container(
          color: Colors.red,
        ),
      ),

    );
  }
}