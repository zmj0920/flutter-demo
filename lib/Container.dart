import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('首页'),
          ),
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            child: FlatButton(
         child: Text("路由跳转"),
         textColor: Colors.blue,
         onPressed: () {
          //导航到新路由   
          Navigator.push( context,
           MaterialPageRoute(builder: (context) {
              return NewRoute();
           }));
          },
         ),
            // 对齐方式
             alignment: Alignment.topCenter,
              height: 300.0,
              width: 300.0,
              //盒子装饰
              decoration: BoxDecoration(
                //背景颜色
                color: Colors.yellow,
                //边框设置
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                  style:BorderStyle.solid
                ),
                //圆角
                borderRadius: BorderRadius.all(
                  Radius.circular(10),    //圆形
                )
              ),
               padding:EdgeInsets.fromLTRB(10, 20, 30, 10),
              // padding:EdgeInsets.fromLTRB(10, 30, 5, 0)
              margin: EdgeInsets.fromLTRB(10, 30, 5, 0),
              //旋转
              //  transform:Matrix4.translationValues(100,0,0)
              //  transform:Matrix4.rotationZ(0.3)
               transform:Matrix4.diagonal3Values(1.2, 1, 1)
          ),
    );
  }
  
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