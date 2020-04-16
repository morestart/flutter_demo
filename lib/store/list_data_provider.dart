import 'package:flutter/material.dart';

class ListDataProvider with ChangeNotifier {
  List<int> _listData = [1, 2, 3, 4, 5, 6, 7, 8];
  List getList() => _listData;
  void addList(int number) {
    _listData.add(number);
    notifyListeners();
  }
}
