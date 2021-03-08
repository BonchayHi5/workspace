import 'package:flutter/material.dart';
import 'package:workspace/export.dart';

class NavItem extends StatelessWidget {
  final Color? iconColor;
  final Color? trailingColor;
  final Color? backgroundColor;
  final IconData? icon;
  final String? label;
  final Function? onTap;

  NavItem({
    this.iconColor,
    this.trailingColor,
    this.backgroundColor,
    this.icon,
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
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
                  child: label == null
                      ? Container()
                      : Text(
                          label!,
                          style: Theme.of(context).textTheme.button,
                        ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 4,
                color: trailingColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
