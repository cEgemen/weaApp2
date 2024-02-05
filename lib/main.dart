import 'package:flutter/material.dart';
import 'package:weather_app_2/product/routeManager/route_manager.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String _appTitle = "WEATHER APP";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      onGenerateRoute:RouteManager.init.onGenerateRoute
    );
  }
}
