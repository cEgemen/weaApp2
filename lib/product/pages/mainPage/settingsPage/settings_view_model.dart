    


import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_app_2/core/base/base_view_model.dart';
 part 'settings_view_model.g.dart';
    
    class SettingsViewModel = _SettingsViewModelBase with _$SettingsViewModel;
    
    abstract class _SettingsViewModelBase with Store,BaseViewModel {
      

   @override
  void setBuildContext(BuildContext context) {
    bContext = context;
  }

  @override
  void init() {}

    }