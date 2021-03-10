import 'package:flutter/cupertino.dart';

class SideNavigationProvider with ChangeNotifier {
  int tabIndex = 0;
  int pageIndex = 0;

  void onItemTap(int index, PageController pageController) {
    tabIndex = index;

    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

  void pageChange(int index) {
    tabIndex = index;
    notifyListeners();
  }
}
