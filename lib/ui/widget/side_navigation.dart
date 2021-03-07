import 'package:flutter/material.dart';
import 'package:workspace/export.dart';

class SideNavigation extends StatefulWidget {
  final PageController pageController;

  SideNavigation({@required this.pageController});
  @override
  _SideNavigationState createState() => _SideNavigationState();
}

class _SideNavigationState extends State<SideNavigation> {
  int _index = 0;

  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });

    widget.pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: AppConstants.kDefaultPadding * 4,
      ),
      width: MediaQuery.of(context).size.width * 0.08,
      child: Column(
        children: [
          FlutterLogo(size: 80),
          SizedBox(height: AppConstants.kDefaultPadding * 4),
          NavItem(
            label: _index == 0 ? AppConstants.dashBoard : null,
            icon: Icons.dashboard,
            iconColor: _index == 0
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).accentIconTheme.color,
            backgroundColor: _index == 0
                ? Colors.lightBlue[50]
                : Theme.of(context).scaffoldBackgroundColor,
            trailingColor: _index == 0
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).scaffoldBackgroundColor,
            onTap: () {
              _onItemTap(0);
            },
          ),
          NavItem(
            label: _index == 1 ? AppConstants.project : null,
            icon: Icons.content_paste,
            iconColor: _index == 1
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).accentIconTheme.color,
            backgroundColor: _index == 1
                ? Colors.lightBlue[50]
                : Theme.of(context).scaffoldBackgroundColor,
            trailingColor: _index == 1
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).scaffoldBackgroundColor,
            onTap: () {
              _onItemTap(1);
            },
          ),
          NavItem(
            label: _index == 2 ? AppConstants.myTask : null,
            icon: Icons.menu,
            iconColor: _index == 2
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).accentIconTheme.color,
            backgroundColor: _index == 2
                ? Colors.lightBlue[50]
                : Theme.of(context).scaffoldBackgroundColor,
            trailingColor: _index == 2
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).scaffoldBackgroundColor,
            onTap: () {
              _onItemTap(2);
            },
          ),
          NavItem(
            label: _index == 3 ? AppConstants.schedule : null,
            icon: Icons.calendar_today,
            iconColor: _index == 3
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).accentIconTheme.color,
            backgroundColor: _index == 3
                ? Colors.lightBlue[50]
                : Theme.of(context).scaffoldBackgroundColor,
            trailingColor: _index == 3
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).scaffoldBackgroundColor,
            onTap: () {
              _onItemTap(3);
            },
          ),
          NavItem(
            label: _index == 4 ? AppConstants.settings : null,
            icon: Icons.settings,
            iconColor: _index == 4
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).accentIconTheme.color,
            backgroundColor: _index == 4
                ? Colors.lightBlue[50]
                : Theme.of(context).scaffoldBackgroundColor,
            trailingColor: _index == 4
                ? Theme.of(context).primaryIconTheme.color
                : Theme.of(context).scaffoldBackgroundColor,
            onTap: () {
              _onItemTap(4);
            },
          ),
        ],
      ),
    );
  }
}
