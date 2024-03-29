

import 'package:flutter/material.dart';
import 'package:weather_app_2/product/pages/mainPage/settingsPage/settings_page.dart';

import '../../enums/router_enum.dart';
import '../../pages/entryPage/entry_page.dart';
import '../../pages/mainPage/main_page.dart';
import '../../pages/signAndLogInPage/sign_or_log_in_view.dart';

class RouteManager with _Routemixin{
         RouteManager._();
         static  final RouteManager _router = RouteManager._(); 
         static RouteManager get init => _router;

         Route<dynamic>? onGenerateRoute(RouteSettings settings){
              final String settPageName = settings.name ?? "/";
           //   final RouterEnum pageEnum = RouterEnum.values.byName(settPageName == "/" ? "entryPage" : settPageName);
           final RouterEnum pageEnum = RouterEnum.values.byName(settPageName == "/" ? "mainPage" : settPageName);

              switch(pageEnum)
              {
                case RouterEnum.signAndLogInPage:
                return toPage(const SignOrLogInView());
                case RouterEnum.mainPage:
                return toPage(const MainPage());
                case RouterEnum.settingsPage:
                return toPage(const SettingPage());
                case RouterEnum.entryPage:
                default:
                return toPage(const  EntryPage(),);
              }
          
         } 
  }


  mixin _Routemixin {
      
        Route<dynamic> toPage(Widget page)
        {
             return MaterialPageRoute(builder: (context) => page,);
        }

  }