// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main2_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Main2ViewModel on _Main2ViewModelBase, Store {
  late final _$isActionTouchedAtom =
      Atom(name: '_Main2ViewModelBase.isActionTouched', context: context);

  @override
  bool get isActionTouched {
    _$isActionTouchedAtom.reportRead();
    return super.isActionTouched;
  }

  @override
  set isActionTouched(bool value) {
    _$isActionTouchedAtom.reportWrite(value, super.isActionTouched, () {
      super.isActionTouched = value;
    });
  }

  late final _$_Main2ViewModelBaseActionController =
      ActionController(name: '_Main2ViewModelBase', context: context);

  @override
  void chanceActionState() {
    final _$actionInfo = _$_Main2ViewModelBaseActionController.startAction(
        name: '_Main2ViewModelBase.chanceActionState');
    try {
      return super.chanceActionState();
    } finally {
      _$_Main2ViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isActionTouched: ${isActionTouched}
    ''';
  }
}
