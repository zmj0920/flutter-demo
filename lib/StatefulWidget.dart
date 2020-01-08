import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo')
        ),
        body: HomePage(),
      )
    );
  }
}

//StatefulWidget 是有状态组件，持有的状态可能在 widget 生命周期改变。通俗的讲：如果我
//们想改变页面中的数据的话这个时候就需要用到 StatefulWidget


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List list=new List();
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: <Widget>[
        Column(
          children: this.list.map((value){
            return ListTile(
              title: Text(value),
            );
          }).toList()
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
            setState(() {
                this.list.add('新增数据1');
                this.list.add('新增数据2');
            });
          },
        )
      ],
    );
  }
}

// class _HomePageState extends State<HomePage> {
//   int countNum=0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizedBox(height: 200),
//         Chip(
//           label:Text('${this.countNum}') ,
//         ),
//         SizedBox(height: 20),
//         RaisedButton(
//           child: Text('按钮'),
//           onPressed: (){
//              setState(() {   //只有有状态组件里面才有
//                   this.countNum++;
//              });
//           },
//         )
//       ],
//     );
//   }
// }

