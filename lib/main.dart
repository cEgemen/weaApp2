import 'package:flutter/material.dart';

import 'product/pages/entryPage/entry_page.dart';

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
      home: const EntryPage(),
    );
  }
}
