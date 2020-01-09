import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../provide/counter.dart';

Widget provide(Widget widget) {
  return MultiProvider(
    providers: [
       ChangeNotifierProvider(create: (_) => CounterProvide()),
        ChangeNotifierProvider(create: (_) => Counter()),
    ],
    child: widget,
  );
}
