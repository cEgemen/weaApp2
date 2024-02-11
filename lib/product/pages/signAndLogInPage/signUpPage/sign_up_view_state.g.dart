// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_view_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignUpViewState on _SignUpViewStateBase, Store {
  late final _$isButtonReadyAtom =
      Atom(name: '_SignUpViewStateBase.isButtonReady', context: context);

  @override
  bool get isButtonReady {
    _$isButtonReadyAtom.reportRead();
    return super.isButtonReady;
  }

  @override
  set isButtonReady(bool value) {
    _$isButtonReadyAtom.reportWrite(value, super.isButtonReady, () {
      super.isButtonReady = value;
    });
  }

  late final _$isNameFieldReadyAtom =
      Atom(name: '_SignUpViewStateBase.isNameFieldReady', context: context);

  @override
  bool get isNameFieldReady {
    _$isNameFieldReadyAtom.reportRead();
    return super.isNameFieldReady;
  }

  @override
  set isNameFieldReady(bool value) {
    _$isNameFieldReadyAtom.reportWrite(value, super.isNameFieldReady, () {
      super.isNameFieldReady = value;
    });
  }

  late final _$isEmailFieldReadyAtom =
      Atom(name: '_SignUpViewStateBase.isEmailFieldReady', context: context);

  @override
  bool get isEmailFieldReady {
    _$isEmailFieldReadyAtom.reportRead();
    return super.isEmailFieldReady;
  }

  @override
  set isEmailFieldReady(bool value) {
    _$isEmailFieldReadyAtom.reportWrite(value, super.isEmailFieldReady, () {
      super.isEmailFieldReady = value;
    });
  }

  late final _$isPasswordFieldReadyAtom =
      Atom(name: '_SignUpViewStateBase.isPasswordFieldReady', context: context);

  @override
  bool get isPasswordFieldReady {
    _$isPasswordFieldReadyAtom.reportRead();
    return super.isPasswordFieldReady;
  }

  @override
  set isPasswordFieldReady(bool value) {
    _$isPasswordFieldReadyAtom.reportWrite(value, super.isPasswordFieldReady,
        () {
      super.isPasswordFieldReady = value;
    });
  }

  late final _$_SignUpViewStateBaseActionController =
      ActionController(name: '_SignUpViewStateBase', context: context);

  @override
  dynamic checkEmailField() {
    final _$actionInfo = _$_SignUpViewStateBaseActionController.startAction(
        name: '_SignUpViewStateBase.checkEmailField');
    try {
      return super.checkEmailField();
    } finally {
      _$_SignUpViewStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic checkPasswordField() {
    final _$actionInfo = _$_SignUpViewStateBaseActionController.startAction(
        name: '_SignUpViewStateBase.checkPasswordField');
    try {
      return super.checkPasswordField();
    } finally {
      _$_SignUpViewStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic checkNameField() {
    final _$actionInfo = _$_SignUpViewStateBaseActionController.startAction(
        name: '_SignUpViewStateBase.checkNameField');
    try {
      return super.checkNameField();
    } finally {
      _$_SignUpViewStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _checkButtonState() {
    final _$actionInfo = _$_SignUpViewStateBaseActionController.startAction(
        name: '_SignUpViewStateBase._checkButtonState');
    try {
      return super._checkButtonState();
    } finally {
      _$_SignUpViewStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isButtonReady: ${isButtonReady},
isNameFieldReady: ${isNameFieldReady},
isEmailFieldReady: ${isEmailFieldReady},
isPasswordFieldReady: ${isPasswordFieldReady}
    ''';
  }
}
