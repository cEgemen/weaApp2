

 import 'package:flutter/material.dart';

class AppRadius extends Radius{
       
         AppRadius.lowCircleRadius({double ? radius}):super.circular(radius ?? 50);
         AppRadius.mediumCircleRadius({double ? radius}):super.circular(radius ?? 75);
         AppRadius.highCircleRadius({double ? radius}):super.circular(radius ?? 100);
}