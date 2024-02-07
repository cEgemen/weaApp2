 


import 'package:flutter/cupertino.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T>
{
   double dynamicWidth({double ? oran}) {
          return MediaQuery.of(context).size.width * (oran ?? 1);
   }
}