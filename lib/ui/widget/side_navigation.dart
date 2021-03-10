import 'package:flutter/material.dart';
import 'package:workspace/export.dart';
import 'package:provider/provider.dart';

class SideNavigation extends StatelessWidget {
  final PageController pageController;
  const SideNavigation({required this.pageController});
  @override
  Widget build(BuildContext context) {
    return Consumer<SideNavigationProvider>(
      builder: (context, value, child) {
        return Container(
          padding: const EdgeInsets.only(
            top: AppConstants.kDefaultPadding * 4,
          ),
          width: MediaQuery.of(context).size.width * 0.08,
          child: ListView(
            children: [
              const FlutterLogo(size: 80),
              const SizedBox(height: AppConstants.kDefaultPadding * 4),
              NavItem(
                label: value.tabIndex == 0 ? AppConstants.dashBoard : null,
                icon: Icons.dashboard,
                iconColor: value.tabIndex == 0
                    ? Theme.of(context).primaryIconTheme.color
                    : Theme.of(context).accentIconTheme.color,
                backgroundColor: value.tabIndex == 0
                    ? Colors.lightBlue[50]
                    : Theme.of(context).scaffoldBackgroundColor,
                trailingColor: value.tabIndex == 0
                    ? Theme.of(context).primaryIconTheme.color
                    : Theme.of(context).scaffoldBackgroundColor,
                onTap: () {
                  value.onItemTap(0, pageController);
                },
              ),
              NavItem(
                label: value.tabIndex == 1 ? AppConstants.project : null,
                icon: Icons.content_paste,
                iconColor: value.tabIndex == 1
                    ? Theme.of(context).primaryIconTheme.color
                    : Theme.of(context).accentIconTheme.color,
                backgroundColor: value.tabIndex == 1
                    ? Colors.lightBlue[50]
                    : Theme.of(context).scaffoldBackgroundColor,
                trailingColor: value.tabIndex == 1
                    ? Theme.of(context).primaryIconTheme.color
                    : Theme.of(context).scaffoldBackgroundColor,
                onTap: () {
                  value.onItemTap(1, pageController);
                },
              ),
              NavItem(
                label: value.tabIndex == 2 ? AppConstants.myTask : null,
                icon: Icons.menu,
                iconColor: value.tabIndex == 2
                    ? Theme.of(context).primaryIconTheme.color
                    : Theme.of(context).accentIconTheme.color,
                backgroundColor: value.tabIndex == 2
                    ? Colors.lightBlue[50]
                    : Theme.of(context).scaffoldBackgroundColor,
                trailingColor: value.tabIndex == 2
                    ? Theme.of(context).primaryIconTheme.color
                    : Theme.of(context).scaffoldBackgroundColor,
                onTap: () {
                  value.onItemTap(2, pageController);
                },
              ),
              NavItem(
                label: value.tabIndex == 3 ? AppConstants.schedule : null,
                icon: Icons.calendar_today,
                iconColor: value.tabIndex == 3
                    ? Theme.of(context).primaryIconTheme.color
                    : Theme.of(context).accentIconTheme.color,
                backgroundColor: value.tabIndex == 3
                    ? Colors.lightBlue[50]
                    : Theme.of(context).scaffoldBackgroundColor,
                trailingColor: value.tabIndex == 3
                    ? Theme.of(context).primaryIconTheme.color
                    : Theme.of(context).scaffoldBackgroundColor,
                onTap: () {
                  value.onItemTap(3, pageController);
                },
              ),
              NavItem(
                label: value.tabIndex == 4 ? AppConstants.settings : null,
                icon: Icons.settings,
                iconColor: value.tabIndex == 4
                    ? Theme.of(context).primaryIconTheme.color
                    : Theme.of(context).accentIconTheme.color,
                backgroundColor: value.tabIndex == 4
                    ? Colors.lightBlue[50]
                    : Theme.of(context).scaffoldBackgroundColor,
                trailingColor: value.tabIndex == 4
                    ? Theme.of(context).primaryIconTheme.color
                    : Theme.of(context).scaffoldBackgroundColor,
                onTap: () {
                  value.onItemTap(4, pageController);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
