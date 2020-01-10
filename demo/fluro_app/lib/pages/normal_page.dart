import 'package:fluro_app/routers/navigator_util.dart';
import 'package:flutter/material.dart';

class NormalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('normalpage'),
      ),
      body: Center(child: Container(
        child: RaisedButton(
          child: Text("返回"),
          onPressed: (){
            NavigatorUtil.goBack(context);
          },
        ),
      ),),
    );
  }
}