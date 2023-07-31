import 'package:flutter/material.dart';

class ButtonNavigationBarViewModel extends ChangeNotifier {

  PageController pageController = PageController();

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void navigation(int index){
    currentIndex = index;
    pageController.jumpToPage(index);
  }
}
