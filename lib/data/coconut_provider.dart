import 'package:flutter/material.dart';

class CoconutProvider extends ChangeNotifier {
  int counter = 0;
  void counterRise() {
    counter++;
    notifyListeners();
  }
}
