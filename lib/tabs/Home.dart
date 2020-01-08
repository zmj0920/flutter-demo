import 'package:flutter/material.dart';
import 'package:myapp/tabs/Setting.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          child: Text('颜色按钮'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
             
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>SettingPage(title:'我是跳转传值')
                )
            );
            
               
          },
        ),
      ),
    );
  }
}
