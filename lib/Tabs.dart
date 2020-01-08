import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Tabs()
    );
  }
}
class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex=0;
  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          //配置对应的索引值选中
          currentIndex: this._currentIndex,   
          //触发事件
          onTap: (int index){
            //改变状态
              setState(() {  
                  this._currentIndex=index;
              });
          },
          //icon的大小
          iconSize:36.0,      
          //选中的颜色 
          fixedColor:Colors.red,   
          //配置底部tabs可以有多个按钮 fixed或shifting
          type:BottomNavigationBarType.fixed,   
         // 底部导航条按钮集合
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            ),
            
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            )
          ],
        ),
      );
  }
}