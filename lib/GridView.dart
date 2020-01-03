import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: LayoutDemo1(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        color: Colors.blue,
        // height: 400,  //设置高度没有反应
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //滚动方式
      // scrollDirection:Axis.horizontal,
      //水平子 Widget 之间间距
      crossAxisSpacing: 20.0,
      //垂直子 Widget 之间间距
      mainAxisSpacing: 20.0,
      //内边距
      padding: EdgeInsets.all(10),
      //一行的 Widget 数量
      crossAxisCount: 2,
      //宽度和高度的比例
      childAspectRatio: 0.7,
      //反转
      reverse: true,
      children: this._getListData(),
    );
  }
}

class LayoutDemo1 extends StatelessWidget {
  List listData = [
    {
      "title": 'Candy Shop',
      "author": 'Mohamed Chahin',
      "imageUrl": 'https://www.itying.com/images/flutter/1.png',
    },
    {
      "title": 'Childhood in a picture',
      "author": 'Google',
      "imageUrl": 'https://www.itying.com/images/flutter/2.png',
    },
    {
      "title": 'Alibaba Shop',
      "author": 'Alibaba',
      "imageUrl": 'https://www.itying.com/images/flutter/3.png',
    },
    {
      "title": 'Candy Shop',
      "author": 'Mohamed Chahin',
      "imageUrl": 'https://www.itying.com/images/flutter/4.png',
    },
    {
      "title": 'Tornado',
      "author": 'Mohamed Chahin',
      "imageUrl": 'https://www.itying.com/images/flutter/5.png',
    },
    {
      "title": 'Undo',
      "author": 'Mohamed Chahin',
      "imageUrl": 'https://www.itying.com/images/flutter/6.png',
    },
    {
      "title": 'white-dragon',
      "author": 'Mohamed Chahin',
      "imageUrl": 'https://www.itying.com/images/flutter/7.png',
    }
  ];

  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 12),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 0.9), width: 1)),

      // height: 400,  //设置高度没有反应
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //注意
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10.0, //水平子 Widget 之间间距
        mainAxisSpacing: 10.0, //垂直子 Widget 之间间距
        crossAxisCount: 2, //一行的 Widget 数量
      ),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
