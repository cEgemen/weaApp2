

import 'package:flutter/material.dart';

import '../../enums/router_enum.dart';
import '../../pages/entryPage/entry_page.dart';
import '../../pages/signAndLogInPage/sign_or_log_in_view.dart';

class RouteManager with _Routemixin{
         RouteManager._();
         static  final RouteManager _router = RouteManager._(); 
         static RouteManager get init => _router;

         Route<dynamic>? onGenerateRoute(RouteSettings settings){
              final String settPageName = settings.name ?? "/";
              final RouterEnum pageEnum = RouterEnum.values.byName(settPageName == "/" ? "entryPage" : settPageName);

              switch(pageEnum)
              {
                case RouterEnum.signAndLogInPage:
                return toPage(const SignOrLogInView());
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