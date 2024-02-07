

import 'package:flutter/src/material/theme_data.dart';
import 'i_app_theme.dart';

class DarkTheme implements IAppTheme{
     DarkTheme._();
     static DarkTheme ? _darkTheme;
     static DarkTheme get  init {
           return _darkTheme == null ? (_darkTheme = DarkTheme._()) : _darkTheme!;   
     }

  @override
  ThemeData get theme =>ThemeData.dark().copyWith();

}