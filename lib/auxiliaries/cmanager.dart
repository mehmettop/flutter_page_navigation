import 'package:flutter/widgets.dart';
import 'package:flutter_page_navigation/auxiliaries/cconstant.dart';

class CManager {
  static final CManager _instance = CManager._internal();

  late PageController pageController;

  factory CManager() {
    return _instance;
  }

  CManager._internal() {
    //-- Constructor
    pageController = PageController();
  }

  //-- Navigation Methods
  void navigateToFirstPage(bool isAnimated) {
    if (isAnimated) {
      pageController.animateToPage(CConstant.pageFirst, curve: Curves.easeInOut, duration: const Duration(milliseconds: 300));
    } else {
      pageController.jumpToPage(CConstant.pageFirst);
    }
  }

  void navigateToSecondPage(bool isAnimated) {
    if (isAnimated) {
      pageController.animateToPage(CConstant.pageSecond, curve: Curves.easeInOut, duration: const Duration(milliseconds: 300));
    } else {
      pageController.jumpToPage(CConstant.pageSecond);
    }
  }

  void navigateToThirdPage(bool isAnimated) {
    if (isAnimated) {
      pageController.animateToPage(CConstant.pageThird, curve: Curves.easeInOut, duration: const Duration(milliseconds: 300));
    } else {
      pageController.jumpToPage(CConstant.pageThird);
    }
  }

  void previousPage() {
    pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void closeDrawer(BuildContext context) {
    Navigator.of(context).pop();
  }
}
