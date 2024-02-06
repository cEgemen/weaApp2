

import 'package:flutter/material.dart';
import '../../enums/router_enum.dart';
import '../../pages/entryPage/entry_page.dart';

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