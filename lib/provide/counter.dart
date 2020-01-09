import 'package:flutter/material.dart';

class  CounterProvide  with ChangeNotifier {
  int value = 0;
  increment() {
    value++;
    notifyListeners();
  }
}


class Counter with ChangeNotifier {
  int _count = 0;
  get count => _count;

  void increment() {
    _count++;
    notifyListeners(); //通知
  }
}