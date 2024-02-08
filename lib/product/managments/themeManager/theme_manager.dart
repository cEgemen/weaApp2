

import 'package:flutter/material.dart';

import '../../enums/theme_enum.dart';
import 'i_theme_manager.dart';

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

