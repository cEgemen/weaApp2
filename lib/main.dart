import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product/managments/providerManager/provider_manager.dart';
import 'product/managments/routeManager/route_manager.dart';
import 'product/managments/themeManager/theme_manager.dart';

void main(List<String> args) {
  runApp( MyApp());
}

class MyApp extends ProviderManager {
   MyApp({super.key});
  final String _appTitle = "WEATHER APP";
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: providers,builder: (context, child) {
        return MaterialApp(
        title: _appTitle,
        debugShowCheckedModeBanner: false,
        theme:context.watch<ThemeManager>().currentTheme,
        onGenerateRoute:RouteManager.init.onGenerateRoute
      );
    },);
  }
}
