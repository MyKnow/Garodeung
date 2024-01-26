//  main_ViewModel.dart
//  2024.01.26.금
//  MyKnow

import 'package:flutter/material.dart';

class mainViewModel with ChangeNotifier {
  int _tabIndex = 0;

  int get tabIndex => _tabIndex;

  void selectTab(int index) {
    _tabIndex = index;
    notifyListeners();
  }
}
