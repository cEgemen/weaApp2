import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../constants/app_constants.dart';
import '../../../widgets/cards/circle_icon_card_widget.dart';

part 'sign_up_view_state.g.dart';

class SignUpViewState = _SignUpViewStateBase with _$SignUpViewState;

abstract class _SignUpViewStateBase with Store {
  final String nameTextFieldText = "User Name";
  final String emailTextFieldText = "Email";
  final TextEditingController nameField = TextEditingController();
  final TextEditingController emailField = TextEditingController();
  final TextEditingController passwordField = TextEditingController();
  final int _maxPasswordLength = 6;

  @observable
  bool isButtonReady = false;
  @observable
  bool isNameFieldReady = false;
  @observable
  bool isEmailFieldReady = false;
  @observable
  bool isPasswordFieldReady = false;

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
    final String text = emailField.text;
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
    final String text = passwordField.text;
    if (text.length >= _maxPasswordLength) {
      if (text.length > _maxPasswordLength) {
        final subText = text.substring(0, text.length - 1);
        passwordField.text = subText;
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
  checkNameField() {
    final String text = nameField.text;
    if (text.isNotEmpty) {
      if (isNameFieldReady != true) {
        isNameFieldReady = true;
        _checkButtonState();
        return;
      }
      _checkButtonState();
      return;
    } else {
      if (isNameFieldReady != false) {
        isNameFieldReady = false;
          _checkButtonState();
        return;
      }
        _checkButtonState();
      return;
    }
  }

  @action
  void _checkButtonState() {
    if (isNameFieldReady && isEmailFieldReady && isPasswordFieldReady) {
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
