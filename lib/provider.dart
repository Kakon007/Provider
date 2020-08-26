import 'package:flutter/material.dart';

class ProviderUi extends ChangeNotifier {
  String message = '';
  bool isEligible;

  void check(int age, int value) {
    if (age >= 18 && value == 1) {
      eligilic();
    } else if (age < 18 && value == 2) {
      noteligic();
    }
  }

  void eligilic() {
    message = 'Your Status is legal';
    isEligible = true;

    notifyListeners();
  }

  void noteligic() {
    message = 'Your Status is illigal';
    isEligible = false;

    notifyListeners();
  }
}
