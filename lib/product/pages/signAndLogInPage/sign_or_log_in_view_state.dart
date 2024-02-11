import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/extensions/context_extension.dart';
import '../../constants/app_constants.dart';
import 'logInPage/log_in_view.dart';
import 'signUpPage/sign_up_view.dart';

part 'sign_or_log_in_view_state.g.dart';

class SignOrLogInViewState = _SignOrLogInViewState with _$SignOrLogInViewState;

abstract class _SignOrLogInViewState with Store {
  final String animatContainerText1 = "Sign Up";
  final String animatContainerText2 = "Log In";
  final double animatedContainerPassiveHeight = AppConstants.lowWidgetSize;
  final double _animatedContainerPassiveWidht = AppConstants.middleWidgetSize;
  final double _animatedContainerActiveWidht = AppConstants.highWidgetSize;
  final Color _animatedContainerActiveColor = Colors.deepPurple.shade200;
  final Color _animatedContainerPassiveColor = Colors.white;

  @observable
  ActivePageName activePage = ActivePageName.values[0];

  @action
  void changeActivePage(ActivePageName page) {
    if (page != activePage) {
      activePage = page;
    }
    return;
  }

  @computed
  Widget activePageReturner() {
    return activePage == ActivePageName.signUp ? const SignUpView() : const LogInView();
  }

  double animatedContainerWidht(ActivePageName page) {
    return page == activePage ? _animatedContainerActiveWidht : _animatedContainerPassiveWidht;
  }

  TextStyle animatedContainerTextStyle(BuildContext context, ActivePageName page) {
    return page == activePage ? context.textTheme.titleLarge! : context.textTheme.titleSmall!;
  }

  Color animatedContainerColor(ActivePageName page) {
    return page == activePage ? _animatedContainerActiveColor : _animatedContainerPassiveColor;
  }
}

enum ActivePageName { signUp, logIn }
