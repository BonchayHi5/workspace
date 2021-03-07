import 'package:flutter/material.dart';
import 'package:workspace/export.dart';

class Home extends StatelessWidget {
  navItem({
    BuildContext context,
    Color iconColor,
    Color trailingColor,
    Color backgroundColor,
    IconData icon,
    String label,
  }) {
    return Container(
      height: AppConstants.navItemH,
      width: MediaQuery.of(context).size.width,
      color: backgroundColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: AppConstants.kDefaultPadding,
                ),
                child: Text(
                  label,
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 5,
              color: trailingColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: AppConstants.kDefaultPadding * 4,
            ),
            width: MediaQuery.of(context).size.width * 0.08,
            child: Column(
              children: [
                FlutterLogo(size: 80),
                SizedBox(height: AppConstants.kDefaultPadding * 4),
                navItem(
                  context: context,
                  label: AppConstants.dashBoard,
                  icon: Icons.dashboard,
                  iconColor: Theme.of(context).primaryIconTheme.color,
                  backgroundColor: Colors.lightBlue[50],
                  trailingColor: Theme.of(context).primaryColor,
                ),
                navItem(
                  context: context,
                  label: AppConstants.project,
                  icon: Icons.content_paste,
                  iconColor: Theme.of(context).accentIconTheme.color,
                  backgroundColor: Theme.of(context).backgroundColor,
                  trailingColor: Theme.of(context).backgroundColor,
                ),
                navItem(
                  context: context,
                  label: AppConstants.myTask,
                  icon: Icons.menu,
                  iconColor: Theme.of(context).accentIconTheme.color,
                  backgroundColor: Theme.of(context).backgroundColor,
                  trailingColor: Theme.of(context).backgroundColor,
                ),
                navItem(
                  context: context,
                  label: AppConstants.schedule,
                  icon: Icons.calendar_today,
                  iconColor: Theme.of(context).accentIconTheme.color,
                  backgroundColor: Theme.of(context).backgroundColor,
                  trailingColor: Theme.of(context).backgroundColor,
                ),
                navItem(
                  context: context,
                  label: AppConstants.settings,
                  icon: Icons.settings,
                  iconColor: Theme.of(context).accentIconTheme.color,
                  backgroundColor: Theme.of(context).backgroundColor,
                  trailingColor: Theme.of(context).backgroundColor,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width * 0.7,
          ),
          Container(
            color: Colors.red,
            width: MediaQuery.of(context).size.width * 0.22,
          ),
        ],
      ),
    );
  }
}
