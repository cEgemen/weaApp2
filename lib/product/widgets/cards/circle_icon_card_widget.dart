

  
import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class CircleIIconCardWidget extends StatelessWidget {
       const CircleIIconCardWidget({required IconData icon,double ? opacity,double ? sizes,Color ? color,super.key}):
       _icon=icon,_sizes=sizes,_color = color,_opacity = opacity;
       final IconData _icon;
       final double ? _sizes;
       final Color ? _color;
       final double ? _opacity;
       @override
       Widget build(BuildContext context) {
         return  SizedBox(
          height: _sizes ?? AppConstants.lowWidgetSize,
          width: _sizes ?? AppConstants.lowWidgetSize,
          child: Opacity(
            opacity: _opacity ?? 1,
            child: Card(
              color:_color ?? Colors.white,
              shape:const CircleBorder(),
              child: Icon(_icon),
            ),
          ),
        );
       }
     }