import 'package:flutter/material.dart';
import '../../../constants/app_constants.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../useful/radius.dart';
import '../atomicButtons/normal_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({required void Function() onPressed, super.key}) : _onPressed = onPressed;
  final void Function() _onPressed;
  final double _elevationValue = 20;
  final String _text = "SIGN UP";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:AppConstants.lowWidgetSize,
      width: context.width * .8,
      child: NormalButton(
        onPressed: _onPressed,
        buttonStyle: ElevatedButton.styleFrom(
            elevation: _elevationValue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(AppRadius.mediumCircleRadius()))),
        child: Center(
            child: Text(
          _text,
          style: context.textTheme.bodyMedium,
        )),
      ),
    );
  }
}
