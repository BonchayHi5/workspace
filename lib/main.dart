import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workspace/res/app_theme.dart';
import 'export.dart';
import 'core/route/router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppTheme>(
          create: (context) => AppTheme(),
        ),
      ],
      child: Consumer<AppTheme>(
        builder: (context, value, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            onGenerateRoute: router.generateRoute,
            themeMode: value.isDark ? ThemeMode.dark : ThemeMode.light,
            home: Home()//LogIn(),
          );
        },
      ),
    );
  }
}
