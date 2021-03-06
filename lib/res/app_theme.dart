import 'package:flutter/material.dart';
import 'package:workspace/export.dart';

class AppTheme with ChangeNotifier {
  bool isDark = false;

  void changeThemeMode() {
    isDark = !isDark;
    debugPrint('$isDark');
    notifyListeners();
  }

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    accentColor: Colors.orange[800],
    backgroundColor: AppColors.backgroundColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    iconTheme: const IconThemeData(color: AppColors.primaryColor),
    primaryIconTheme: const IconThemeData(color: AppColors.primaryColor),
    accentIconTheme: const IconThemeData(color: AppColors.textColor),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      elevation: AppConstants.appBarEvelation,
    ),
    textTheme: const TextTheme(
      headline5: TextStyle(
        fontSize: AppConstants.headline5,
        color: AppColors.textColor,
      ),
      headline6: TextStyle(
        fontSize: AppConstants.headline6,
        color: AppColors.textColor,
      ),
      subtitle1: TextStyle(
        fontSize: AppConstants.subtitle1,
        color: AppColors.textColor,
      ),
      subtitle2: TextStyle(
        fontSize: AppConstants.subtitle2,
        color: AppColors.textColor,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark();
}
