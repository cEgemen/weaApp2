import 'package:flutter/material.dart';
import 'package:weather_app_2/product/managments/themeManager/dark_theme.dart';
import 'package:weather_app_2/product/managments/themeManager/light_theme.dart';

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