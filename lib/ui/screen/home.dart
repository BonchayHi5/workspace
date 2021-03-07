import 'package:flutter/material.dart';
import 'package:workspace/export.dart';

class Home extends StatelessWidget {
  final _pageController = PageController();

  void onItemTap() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavigation(
            pageController: _pageController,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.92,
            child: PageView(
              scrollDirection: Axis.vertical,
              controller: _pageController,
              children: [
                Dashboard(),
                Project(),
                MyTask(),
                Schedule(),
                Settings(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
