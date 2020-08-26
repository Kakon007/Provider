import 'package:flutter/material.dart';

class Model extends ChangeNotifier {
  int clockvalue = 50;
  int gettime() => clockvalue;

  void clockchange() {
    clockvalue--;
    notifyListeners();
  }
}
