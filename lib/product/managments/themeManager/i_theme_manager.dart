

  import 'package:flutter/material.dart';

import '../../enums/theme_enum.dart';


abstract class IThemeManager {
     late ThemeData currentTheme;
     late ThemeEnum currentThemeEnum;

     void changeTheme(ThemeEnum theme);

}
