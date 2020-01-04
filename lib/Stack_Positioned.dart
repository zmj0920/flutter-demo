import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Positioned')),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 10,
                  child: Icon(Icons.home,size: 40,color: Colors.white),
                ),
                Positioned(
                 bottom: 0,
                 left: 100,
                  child: Icon(Icons.search,size: 30,color: Colors.white),
                ),
                Positioned(
                  right: 0,
                  child: Icon(Icons.settings_applications,size: 30,color: Colors.white),
                )
              ],
            ),
      ),
    );
  }
}
