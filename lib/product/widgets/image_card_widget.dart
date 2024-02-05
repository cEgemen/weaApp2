import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  const ImageCardWidget({super.key, required String path, double? height = 50, double? widht = 50})
      : _path = path,
        _height = height,
        _widht = widht;

  final String _path;
  final double? _height;
  final double? _widht;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _widht,
      child: Card(
        child: Image.asset(
          _path,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
