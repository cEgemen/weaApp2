  

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_app_2/core/base/base_view_model.dart';
 part 'main2_view_model.g.dart';
   
   class Main2ViewModel = _Main2ViewModelBase with _$Main2ViewModel;
   
   abstract class _Main2ViewModelBase with Store,BaseViewModel {
        @override
  void setBuildContext(BuildContext context) {
       bContext  =context;
  }

        @override
  void init() {
  }
   }