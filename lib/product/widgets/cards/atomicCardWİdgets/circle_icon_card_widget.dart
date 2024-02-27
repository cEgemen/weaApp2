import 'package:flutter/material.dart';
import 'package:weather_app_2/product/useful/radius.dart';
import '../../../constants/app_constants.dart';

class CircleIIconCardWidget extends StatelessWidget {
  const CircleIIconCardWidget({required IconData icon, void Function()? onTap, double? opacity, double? sizes, Color? color, super.key})
      : _icon = icon,
        _sizes = sizes,
        _color = color,
        _opacity = opacity,
        _onTap = onTap;
  final IconData _icon;
  final double? _sizes;
  final Color? _color;
  final double? _opacity;
  final void Function()? _onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _sizes ?? AppConstants.lowWidgetSize,
      width: _sizes ?? AppConstants.lowWidgetSize,
      child: Opacity(
        opacity: _opacity ?? 1,
        child: InkWell(
          borderRadius: BorderRadius.all(AppRadius.highCircleRadius()),
          onTap: _onTap,
          child: Card(
            color: _color,
            shape: const CircleBorder(),
            child: Icon(_icon),
          ),
        ),
      ),
    );
  }
}
