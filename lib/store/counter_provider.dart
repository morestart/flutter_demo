import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _number = 0;
  int get value => _number;
  void changeNumber() {
    _number++;
    notifyListeners();
  }
}
