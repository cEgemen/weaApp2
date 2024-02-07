import 'package:flutter/material.dart';

import '../managments/themeManager/dark_theme.dart';
import '../managments/themeManager/light_theme.dart';

enum ThemeEnum  {
    light,
    dark
}

extension ThemeEnumExtension on ThemeEnum{
        
     ThemeData get theme {
              switch (this) {
                case ThemeEnum.light:
                return LightTheme.init.theme;
                case ThemeEnum.dark:
                return DarkTheme.init.theme;

              }
     }

}