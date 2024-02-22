     

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_app_2/core/base/base_view_model.dart';
     part 'search_view_model.g.dart';
     
     class SearchViewModel = _SearchViewModelBase with _$SearchViewModel;
     
     abstract class _SearchViewModelBase with Store , BaseViewModel{
              
              @override
  void setBuildContext(BuildContext context) {
           bContext = context;
  }
      @override
  void init() {
  }
     }