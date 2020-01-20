import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '百姓生活+',
        //去掉debug
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: GuidePages(),
      ),
    );
  }
}

class GuidePages extends StatelessWidget {
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        // iconColor: Colors.pink,
        // bubbleBackgroundColor: Colors.pink,
        body: Text(
          '这是属于你我的孤岛',
        ),
        title: Text(
          '孤岛',
        ),
        // titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        // bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'images/jiche.jpg',
          fit: BoxFit.cover,
        ),
        textStyle: TextStyle(fontSize: 20, color: Colors.white)),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconColor: Colors.greenAccent,
      bubbleBackgroundColor: Colors.greenAccent,
      // iconImageAssetPath: 'images/miaosu.jpg',
      body: Text(
        '无问世间',
      ),
      title: Text('No.2'),
      mainImage: Image.asset(
        'images/miaosu.jpg',
        fit: BoxFit.cover,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      iconColor: Colors.purple,
      bubbleBackgroundColor: Colors.white,
      pageColor: Color(0xFF607D8B),
      //  iconImageAssetPath: 'images/nidename.jpg',
      body: Text("结束页"),
      title: Text('No.3'),
      mainImage: Image.asset(
        'images/nidename.jpg',
        fit: BoxFit.cover,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.white,
      skipText: Text('跳过'),
      doneText: RaisedButton(
        onPressed: () {
          // onPressed不为null视为可点击
          print('You click the button');
        },
        textColor: Colors.white, // 文本颜色
        color: Colors.blueAccent, // 按钮颜色
        highlightColor: Colors.lightBlue, //点击按钮后高亮的颜色
        elevation: 20, // 按钮图层高度
        highlightElevation: 8, // 点击按钮高亮后的图层高度
        animationDuration: Duration(milliseconds: 300), // 点击按钮后过渡动画时间
        child: Text('体验'),
        splashColor: Colors.red,
        shape: CircleBorder(side: BorderSide(color: Colors.white)),
      ),
      // showNextButton: true,
      // showBackButton: true,
      showSkipButton: true,
      onTapSkipButton: () {
        print("跳过");
      },
      onTapDoneButton: () {
        print("完成");
      },
      pageButtonTextStyles: TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),
    );
  }
}
