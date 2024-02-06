import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_2/product/managments/themeManager/theme_manager.dart';

import 'product/managments/routeManager/route_manager.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String _appTitle = "WEATHER APP";
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => ThemeManager.init,
      builder: (context, child) => MaterialApp(
        title: _appTitle,
        debugShowCheckedModeBanner: false,
        theme:context.watch<ThemeManager>().currentTheme,
        onGenerateRoute:RouteManager.init.onGenerateRoute
      ),
    );
  }
}
