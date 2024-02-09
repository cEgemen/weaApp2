

import 'package:flutter/material.dart';

import '../../useful/radius.dart';
import 'i_app_theme.dart';

class DarkTheme implements IAppTheme{
     DarkTheme._();
     static DarkTheme ? _darkTheme;
     static DarkTheme get  init {
           return _darkTheme == null ? (_darkTheme = DarkTheme._()) : _darkTheme!;   
     }

  @override
  ThemeData get theme =>ThemeData.dark().copyWith(
    inputDecorationTheme: InputDecorationTheme(border: OutlineInputBorder(borderRadius: BorderRadius.all(AppRadius.highCircleRadius())),
      ),
  );

}