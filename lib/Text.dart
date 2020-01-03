import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Text'),
          ),
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
          child: Text(
        'Dart是由谷歌开发的计算机编程语言,它可以被用于web、服务器、移动应用 和物联网等领域的开发。 Dart诞生于2011年，号称要取代JavaScript 要学Flutter的话我们必须首先得会Dart',
        //文本对齐方式（center居中，left左对齐，right右对齐，justfy两端对齐）
        textAlign: TextAlign.left, 
        //文本方向（ltr从左至右，rtl从右至左）
        textDirection: TextDirection.rtl,
        //文字超出屏幕之后的处理方式
        overflow: TextOverflow.ellipsis, 
        //字体显示倍率
        textScaleFactor:1.2,
        // 文字显示最大行数
        maxLines: 3, 
        style: TextStyle(
          fontSize: 25.0,
          //文字样式（italic斜体，normal正常体）
          fontStyle:FontStyle.italic,
          // 字体粗细（bold粗体，normal正常体）
          fontWeight:FontWeight.bold,
          color: Colors.red,
          //单词间隙（如果是负值，会让单词变得更紧凑
          wordSpacing:10.0,
          //字母间隙（如果是负值，会让字母变得更紧凑）
          letterSpacing:10.0,
          // 文字装饰线（none没有线，lineThrough删除线，overline上划线，underline下划线）
           decoration: TextDecoration.underline,
           //文字装饰线风格（[dashed,dotted]虚线，double两根线，solid一根实线，wavy波浪线）
           decorationStyle: TextDecorationStyle.solid,
           //文字装饰线颜色
          decorationColor:Colors.blue,
        ),
      )),
    );
  }
}
