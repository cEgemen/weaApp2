import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../useful/radius.dart';

class AnimatedAndTouchableContainer extends StatelessWidget {
  const AnimatedAndTouchableContainer(
      {super.key, required Widget child, double? width, double? height, Color? color, Duration? duration, required void Function() onTap})
      : _color = color ?? Colors.white,
        _duration = duration,
        _height = height ?? AppConstants.lowWidgetSize,
        _child = child,
        _onTap = onTap,
        _width = width ?? AppConstants.middleWidgetSize;
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
        borderRadius: BorderRadius.all(AppRadius.lowCircleRadius()),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(AppRadius.lowCircleRadius())),
          child: AnimatedContainer(
              height: _height,
              width: _width,
              decoration:
                  BoxDecoration(color: _color, border: Border.all(color: Colors.black), borderRadius: BorderRadius.all(AppRadius.lowCircleRadius())),
              duration: _duration ?? const Duration(milliseconds: 500),
              child: _child),
        ));
  }
}
