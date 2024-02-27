import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_2/product/enums/router_enum.dart';
import 'package:weather_app_2/product/enums/theme_enum.dart';
import '../../../../core/base/base_view_model.dart';
import '../../../managments/themeManager/theme_manager.dart';
part 'main2_view_model.g.dart';

class Main2ViewModel = _Main2ViewModelBase with _$Main2ViewModel;

abstract class _Main2ViewModelBase with Store, BaseViewModel {
  
  @observable
  bool isActionTouched = false;

  @action
  void chanceActionState() {
    isActionTouched = !isActionTouched;
  }
  
  void toSettingPage()
  {
      Navigator.pushNamed(bContext,RouterEnum.settingsPage.name);
  }
  
  void chanceTheme()
  {
    if(ThemeManager.init().currentThemeEnum == ThemeEnum.light)
    {
   bContext.read<ThemeManager>().changeTheme(ThemeEnum.dark);
    }
    else{
   bContext.read<ThemeManager>().changeTheme(ThemeEnum.light);
    }
      
  }

  @override
  void setBuildContext(BuildContext context) {
    bContext = context;
  }

  @override
  void init() {}
}
