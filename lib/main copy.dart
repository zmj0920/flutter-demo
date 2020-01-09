import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'index.dart';
import 'package:provider/provider.dart';
import 'provide/counter.dart';

void main() {


  runApp(provide(MyApp()));
}

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '百姓生活+',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: IndexPage(),
      ),
    );
  }
}
