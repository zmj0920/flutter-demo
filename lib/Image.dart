import 'package:flutter/material.dart';

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
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          //本地加载图片
          // child: Image.asset(
          //   'images/a.jpeg',
          //   fit: BoxFit.cover,
          // ),
          width: 300,
          height: 300,
          //背景图片
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            image: DecorationImage(
                image: NetworkImage(
                    "https://www.itying.com/images/201905/thumb_img/1101_thumb_G_1557845381862.jpg"),
                fit: BoxFit.cover),
          )
          // child: Image.network('http://www.ionic.wang/statics/index/images/ionic4.png',
          //  //图片的对齐方式
          // alignment:Alignment.center,
          // //设置图片的背景颜色，通常和colorBlendMode配合一起使用，
          // //这样可以是图片颜色和背景色混合。上面的图片就是进行了颜色的混合，
          // //绿色背景和图片红色的混合
          // color:Colors.red,
          // colorBlendMode:BlendMode.colorDodge,
          // //图片重复排列方式
          // //repeat:ImageRepeat.repeatX,
          // //fit属性用来控制图片的拉伸和挤压，这都是根据父容器来的。
          // fit:BoxFit.cover,
          // ),//远程图片
          ),
    );
  }
}
