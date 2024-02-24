     

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/base_view_model.dart';

part 'search_view_model.g.dart';
     
     class SearchViewModel = _SearchViewModelBase with _$SearchViewModel;
     
     abstract class _SearchViewModelBase with Store , BaseViewModel{

         @observable
         bool isTouch = false;

         @action
         void changeTouchState()
         {
            isTouch = !isTouch;
         } 
           
         double changeValue(double passiveValue,double activeValue )
         {
             return isTouch ? activeValue : passiveValue;
         } 
         
         @computed
         IconData get changeIconButtonIcon
         {
                return isTouch ? Icons.arrow_upward_outlined :Icons.arrow_downward_outlined;
         }

  @override
  void setBuildContext(BuildContext context) {
           bContext = context;
  }
      @override
  void init() {
              
              }

       void toPreviouisPage(TabController ? controller) {
                     if(controller != null)
                     {
                       final previousIndex = controller.previousIndex;
                       controller.animateTo(previousIndex); 
                     }
       }

     }