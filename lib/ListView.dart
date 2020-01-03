import 'package:flutter/material.dart';

import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('图片'),
          ),
          body: HomeContent1()
          ),
    );
  }
}

//水平排列
class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Container(
      height: 180,
      child: ListView(
        //排列方式，
        scrollDirection: Axis.horizontal,
        //内边距
        padding: EdgeInsets.all(20),
        //反转
        reverse: true,
        children: <Widget>[
          Container(
            width: 180.0,           
            color: Colors.red,
          ),
          Container(
            width: 180.0,            
            color: Colors.orange,
            child: ListView(
              children: <Widget>[
                Image.network("https://www.itying.com/images/flutter/1.png"),
                Text('我是一个文本')
              ],
            ),
          ),
          Container(          
            width: 180.0,
            color: Colors.blue,
          ),
          Container(           
            width: 180.0,
            color: Colors.deepOrange,
          ),
          Container(           
            width: 180.0,
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}

//远程加载列表
class HomeContent extends StatelessWidget {
  //自定义方法
  Widget _getListData(context, index) {
    return ListTile(
        title: Text(listData[index]["title"]),
        leading: Image.network(listData[index]["imageUrl"]),
        subtitle: Text(listData[index]["author"]));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
        itemCount: listData.length, itemBuilder: this._getListData);
  }
}
