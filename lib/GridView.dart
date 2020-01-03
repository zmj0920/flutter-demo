import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    for (var i = 0; i < listData.length; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Image.network(
              listData[i]['imageUrl'],
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12),
            Text(
              listData[i]['title'],
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
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
     // childAspectRatio: 0.7,
      //反转
      //  reverse: true,
      children: this._getListData(),
    );
  }
}

class LayoutDemo1 extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 12),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
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
