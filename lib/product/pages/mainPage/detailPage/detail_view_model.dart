  
   
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../../core/base/base_view_model.dart';
part 'detail_view_model.g.dart';
    
    class DetailViewModel = _DetailViewModelBase with _$DetailViewModel;
    
    abstract class _DetailViewModelBase with Store , BaseViewModel{
      

    @override
  void setBuildContext(BuildContext context) {
             bContext = context;
  }
  @override
  void init() {
  }

    }