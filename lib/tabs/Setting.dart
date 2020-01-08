import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  String title;
  SettingPage({Key key,  this.title}) : super(key: key);
  _SettingPageState createState() => _SettingPageState(title:this.title);
}

class _SettingPageState extends State<SettingPage> {

 //4:定义一个接收参数的变量
  String title;
  //5:构造函数接收这个参数
  _SettingPageState({this.title});

  @override
  Widget build(BuildContext context) {
   // print(widget.title);
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("$title"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        )
      ],
    );
  }
}
