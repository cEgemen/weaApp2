import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import '../../../core/extensions/context_extension.dart';
import 'logInPage/login_in_view.dart';
import 'signInPage/signIn_view.dart';
part 'sign_or_log_in_view_state.g.dart';

class SignOrLogInViewState = _SignOrLogInViewStateBase with _$SignOrLogInViewState;

abstract class _SignOrLogInViewStateBase with Store {
  final String animatContainerText1 = "Sign In";
  final String animatContainerText2 = "Log In";
  final double animatedContainerPassiveHeight = 60;
  final double _animatedContainerPassiveWidht = 80;
  final double _animatedContainerActiveWidht = 120;
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
  Widget activePageReturner()
  {
     return activePage == ActivePageName.signIn ? const SignInView() : const LogInView();
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

enum ActivePageName { signIn, logIn }
