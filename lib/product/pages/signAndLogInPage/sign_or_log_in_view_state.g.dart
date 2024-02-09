// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_or_log_in_view_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignOrLogInViewState on _SignOrLogInViewState, Store {
  late final _$activePageAtom =
      Atom(name: '_SignOrLogInViewStateBase.activePage', context: context);

  @override
  ActivePageName get activePage {
    _$activePageAtom.reportRead();
    return super.activePage;
  }

  @override
  set activePage(ActivePageName value) {
    _$activePageAtom.reportWrite(value, super.activePage, () {
      super.activePage = value;
    });
  }

  late final _$_SignOrLogInViewStateBaseActionController =
      ActionController(name: '_SignOrLogInViewStateBase', context: context);

  @override
  void changeActivePage(ActivePageName page) {
    final _$actionInfo = _$_SignOrLogInViewStateBaseActionController
        .startAction(name: '_SignOrLogInViewStateBase.changeActivePage');
    try {
      return super.changeActivePage(page);
    } finally {
      _$_SignOrLogInViewStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
activePage: ${activePage}
    ''';
  }
}
