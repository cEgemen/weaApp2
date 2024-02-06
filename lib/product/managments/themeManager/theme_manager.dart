

import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app_2/product/managments/themeManager/i_theme_manager.dart';

import '../../enums/theme_enum.dart';

class ThemeManager extends ChangeNotifier implements IThemeManager{
  ThemeManager._();
   
   static ThemeManager ? _manager;

   static ThemeManager  init() {
        return _manager==null ? (_manager = ThemeManager._()) : _manager!; 
   }
 

  @override
  ThemeData currentTheme = ThemeEnum.light.theme;

  @override
  ThemeEnum  currentThemeEnum  = ThemeEnum.light;

  @override
  void changeTheme(ThemeEnum theme) {
        if(theme == currentThemeEnum)
        {
          return ;
        }
        currentThemeEnum = theme;
        currentTheme = theme.theme;
        notifyListeners();
  }
  





}

