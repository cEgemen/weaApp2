

  import 'package:flutter/widgets.dart';

class AppPadding extends EdgeInsets{ 
    

   const  AppPadding.smallHorizontalPadding({double value = 4}):super.symmetric(horizontal: value) ;
   const  AppPadding.normalHorizontalPadding({double value = 8}):super.symmetric(horizontal: value) ;
   const  AppPadding.largeHorizontalPadding({double value = 12}):super.symmetric(horizontal: value) ;

          
}