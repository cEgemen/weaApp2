// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_view_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LogInViewModel on _LogInViewModelBase, Store {
  late final _$isButtonReadyAtom =
      Atom(name: '_LogInViewModelBase.isButtonReady', context: context);

  @override
  bool get isButtonReady {
    _$isButtonReadyAtom.reportRead();
    return super.isButtonReady;
  }

  bool _isButtonReadyIsInitialized = false;

  @override
  set isButtonReady(bool value) {
    _$isButtonReadyAtom.reportWrite(
        value, _isButtonReadyIsInitialized ? super.isButtonReady : null, () {
      super.isButtonReady = value;
      _isButtonReadyIsInitialized = true;
    });
  }

  late final _$isEmailFieldReadyAtom =
      Atom(name: '_LogInViewModelBase.isEmailFieldReady', context: context);

  @override
  bool get isEmailFieldReady {
    _$isEmailFieldReadyAtom.reportRead();
    return super.isEmailFieldReady;
  }

  bool _isEmailFieldReadyIsInitialized = false;

  @override
  set isEmailFieldReady(bool value) {
    _$isEmailFieldReadyAtom.reportWrite(
        value, _isEmailFieldReadyIsInitialized ? super.isEmailFieldReady : null,
        () {
      super.isEmailFieldReady = value;
      _isEmailFieldReadyIsInitialized = true;
    });
  }

  late final _$isPasswordFieldReadyAtom =
      Atom(name: '_LogInViewModelBase.isPasswordFieldReady', context: context);

  @override
  bool get isPasswordFieldReady {
    _$isPasswordFieldReadyAtom.reportRead();
    return super.isPasswordFieldReady;
  }

  bool _isPasswordFieldReadyIsInitialized = false;

  @override
  set isPasswordFieldReady(bool value) {
    _$isPasswordFieldReadyAtom.reportWrite(value,
        _isPasswordFieldReadyIsInitialized ? super.isPasswordFieldReady : null,
        () {
      super.isPasswordFieldReady = value;
      _isPasswordFieldReadyIsInitialized = true;
    });
  }

  late final _$_LogInViewModelBaseActionController =
      ActionController(name: '_LogInViewModelBase', context: context);

  @override
  dynamic checkEmailField() {
    final _$actionInfo = _$_LogInViewModelBaseActionController.startAction(
        name: '_LogInViewModelBase.checkEmailField');
    try {
      return super.checkEmailField();
    } finally {
      _$_LogInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic checkPasswordField() {
    final _$actionInfo = _$_LogInViewModelBaseActionController.startAction(
        name: '_LogInViewModelBase.checkPasswordField');
    try {
      return super.checkPasswordField();
    } finally {
      _$_LogInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _checkButtonState() {
    final _$actionInfo = _$_LogInViewModelBaseActionController.startAction(
        name: '_LogInViewModelBase._checkButtonState');
    try {
      return super._checkButtonState();
    } finally {
      _$_LogInViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isButtonReady: ${isButtonReady},
isEmailFieldReady: ${isEmailFieldReady},
isPasswordFieldReady: ${isPasswordFieldReady}
    ''';
  }
}
