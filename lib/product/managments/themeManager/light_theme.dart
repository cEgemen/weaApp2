import 'package:flutter/material.dart';

import '../../useful/radius.dart';
import 'i_app_theme.dart';

class LightTheme implements IAppTheme {
  LightTheme._();

  static LightTheme? _lightTheme;
  static LightTheme get init {
    return _lightTheme == null ? (_lightTheme = LightTheme._()) : _lightTheme!;
  }

  @override
  ThemeData get theme => ThemeData.light().copyWith(
      inputDecorationTheme: InputDecorationTheme(border: OutlineInputBorder(borderRadius: BorderRadius.all(AppRadius.highCircleRadius())),
      ),
      );
}
