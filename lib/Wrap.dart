import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Wrap')),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      //主轴方向上的间距
      spacing: 10,
       //上下的间距
      runSpacing: 10,
      //文本方向
      //textDirection: TextDirection.ltr,
      //主轴的方向，默认水平
      // direction: Axis.vertical,
      //主轴的对其方式
       alignment:WrapAlignment.spaceEvenly,
       //run 的对齐方式。run 可以理解为新的行或者
// 列，如果是水平方向布局的话，run 可以理解
// 为新的一行
       runAlignment: WrapAlignment.center,
      children: <Widget>[
        MyButton("第1集"),
        MyButton("第2集"),
        MyButton("第3集"),
        MyButton("第4集"),
        MyButton("第5集"),
        MyButton("第6集"),
        MyButton("第7集"),
        MyButton("第8集"),
        MyButton("第9集"),
        MyButton("第10集"),
        MyButton("第11集"),
        MyButton("第3集"),
        MyButton("第4集"),
        MyButton("第5集"),
        MyButton("第6集"),
        MyButton("第7集"),
        MyButton("第8集"),
        MyButton("第9集"),
        MyButton("第10集"),
        MyButton("第11集"),
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        child: Text(this.text),
        textColor: Theme.of(context).accentColor,
        onPressed: () {});
  }
}
