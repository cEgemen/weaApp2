
import 'package:flutter/material.dart';

class AnimatedAndTouchableContainer extends StatelessWidget {
  const AnimatedAndTouchableContainer(
      {super.key, required Widget child,double? width, double? height, Color? color, Duration? duration, required void Function() onTap})
      : _color = color ?? Colors.white,
        _duration = duration,
        _height = height ?? 50,
        _child = child,
        _onTap = onTap,
        _width = width ?? 100;
  final double _width;
  final double _height;
  final Color _color;
  final Duration? _duration;
  final void Function() _onTap;
  final Widget _child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: AnimatedContainer(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
              color: _color,
              border: Border.all(color: Colors.black),
              borderRadius:const  BorderRadius.all(Radius.circular(50))),
          duration: _duration ?? const Duration(seconds: 1),
          child: _child),
    );
  }
}
