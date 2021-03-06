import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workspace/export.dart';
import 'package:workspace/ui/screen/home.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppConstants.HomeScreen:
      return MaterialPageRoute(
        builder: (context) => Home(),
      );
      break;
    default:
      return MaterialPageRoute(
        builder: (context) => LogIn(),
      );
  }
}
