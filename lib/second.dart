import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'provide/counter.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Provide<CounterProvide>(
        builder: (context, child,counter) {
          return Text('${counter.value}',style:Theme.of(context).textTheme.display1,
          );
        },
      )
      )
    );
  }
}