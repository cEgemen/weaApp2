import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/base_view_model.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/cards/circle_icon_card_widget.dart';

part 'log_in_view_state.g.dart';

class LogInViewModel = _LogInViewModelBase with _$LogInViewModel;

abstract class _LogInViewModelBase with Store, BaseViewModel {
  final String textButtonText = "Forgot Your Password ?";
  final String emailTextFieldText = "Email";
  @observable
  late bool isButtonReady;
  @observable
  late bool isEmailFieldReady;
  @observable
  late bool isPasswordFieldReady;

  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  final int _maxPasswordLength = 6;
  @override
  void setBuildContext(BuildContext context) {
    bContext = context;
  }

  @override
  void init() {
    isButtonReady = false;
    isEmailFieldReady = false;
    isPasswordFieldReady = false;
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  Widget setCircleCardIcon(bool isReadyValue) {
    return CircleIIconCardWidget(
      icon: Icons.done_outline_outlined,
      color: _setColor(isReadyValue),
      sizes: _setSizes(isReadyValue),
      opacity: _setOpacity(isReadyValue),
    );
  }

  double? _setOpacity(bool isReadyValue) => isReadyValue ? null : AppConstants.lowOpacity;

  double? _setSizes(bool isReadyValue) => isReadyValue ? null : AppConstants.lowWidgetSize * .5;

  MaterialColor? _setColor(bool isReadyValue) => isReadyValue ? Colors.green : null;


   @action
  checkEmailField() {
    final String text = emailController.text;
    if (text.isNotEmpty && text.contains("@")) {
      if (isEmailFieldReady != true) {
        isEmailFieldReady = true;
        _checkButtonState();
        return;
      }
      _checkButtonState();
      return;
    } else {
      if (isEmailFieldReady != false) {
        isEmailFieldReady = false;
         _checkButtonState();
        return;
      }
       _checkButtonState();
      return;
    }
  }

  @action
  checkPasswordField() {
    final String text = passwordController.text;
    if (text.length >= _maxPasswordLength) {
      if (text.length > _maxPasswordLength) {
        final subText = text.substring(0, text.length - 1);
        passwordController.text = subText;
      }
      if (isPasswordFieldReady != true) {
        isPasswordFieldReady = true;
        _checkButtonState();
        return;
      }
      _checkButtonState();
      return;
    } else {
      if (isPasswordFieldReady != false) {
        isPasswordFieldReady = false;
          _checkButtonState();
        return;
      }
        _checkButtonState();
      return;
    }
  }


  @action
  void _checkButtonState() {
    if (isEmailFieldReady && isPasswordFieldReady) {
      if (isButtonReady != true) {
        isButtonReady = true;
        return;
      }
      return;
    }

    if (isButtonReady != false) {
      isButtonReady = false;
      return;
    }
    return;
  }
 
}
