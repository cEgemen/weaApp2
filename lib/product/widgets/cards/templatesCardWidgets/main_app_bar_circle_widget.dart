import 'package:flutter/material.dart';
import '../atomicCardWİdgets/circle_icon_card_widget.dart';

class MainCircleIconWidget extends StatelessWidget {
  const MainCircleIconWidget({required void Function() onTap, required this.icon, super.key}) : _onTap = onTap;
  final void Function() _onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return CircleIIconCardWidget(
      icon: icon,
      sizes: 50,
      onTap: _onTap,
    );
  }
}
