// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchViewModel on _SearchViewModelBase, Store {
  Computed<IconData>? _$changeIconButtonIconComputed;

  @override
  IconData get changeIconButtonIcon => (_$changeIconButtonIconComputed ??=
          Computed<IconData>(() => super.changeIconButtonIcon,
              name: '_SearchViewModelBase.changeIconButtonIcon'))
      .value;

  late final _$isTouchAtom =
      Atom(name: '_SearchViewModelBase.isTouch', context: context);

  @override
  bool get isTouch {
    _$isTouchAtom.reportRead();
    return super.isTouch;
  }

  @override
  set isTouch(bool value) {
    _$isTouchAtom.reportWrite(value, super.isTouch, () {
      super.isTouch = value;
    });
  }

  late final _$_SearchViewModelBaseActionController =
      ActionController(name: '_SearchViewModelBase', context: context);

  @override
  void changeTouchState() {
    final _$actionInfo = _$_SearchViewModelBaseActionController.startAction(
        name: '_SearchViewModelBase.changeTouchState');
    try {
      return super.changeTouchState();
    } finally {
      _$_SearchViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isTouch: ${isTouch},
changeIconButtonIcon: ${changeIconButtonIcon}
    ''';
  }
}
