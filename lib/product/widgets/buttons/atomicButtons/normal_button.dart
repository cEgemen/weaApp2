

  
import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
     const NormalButton({required Widget child,void Function() ? onPressed,ButtonStyle? buttonStyle,super.key}):_child=child,_onPressed=onPressed,_buttonStyle=buttonStyle;
     final void Function() ? _onPressed;
     final Widget _child;
     final ButtonStyle? _buttonStyle;
     @override
     Widget build(BuildContext context) {
       return ElevatedButton(
        onPressed: _onPressed, 
        style:_buttonStyle,
        child:_child,
        );
     }
   }