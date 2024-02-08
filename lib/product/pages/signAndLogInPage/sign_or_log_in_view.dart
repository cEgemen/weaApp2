import 'package:flutter/material.dart';
import 'package:weather_app_2/product/widgets/containers/touchable_and_animated_container.dart';
import '../../../core/base/base_state.dart';
import 'sign_or_log_in_view_state.dart';
import "package:flutter_mobx/flutter_mobx.dart";

class SignOrLogInView extends StatefulWidget {
  const SignOrLogInView({super.key});

  @override
  State<SignOrLogInView> createState() => _SignOrLogInViewState();
}

class _SignOrLogInViewState extends BaseState<SignOrLogInView> {
  final SignOrLogInViewState _state = SignOrLogInViewState();
  @override
  Widget build(BuildContext context) {
    return builder;
  }

  Widget get builder => Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.grey,
                    ),
                    Positioned(
                      bottom: 25,
                      right: 0,
                      left: 0,
                      top: -25,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.yellow, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75), bottomRight: Radius.circular(75))),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Observer(builder: (_) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AnimatedAndTouchableContainer(
                                color: _state.activePage == ActivePageName.signIn ? Colors.deepPurple.shade300 : null,
                                width: _state.activePage == ActivePageName.signIn ? 120 : null,
                                height: _state.activePage == ActivePageName.signIn ? 80 : null,
                                child: Center(
                                  child: Text(
                                    "Sign In",
                                    style: _state.activePage == ActivePageName.signIn
                                        ? Theme.of(context).textTheme.labelLarge
                                        : Theme.of(context).textTheme.labelSmall,
                                  ),
                                ),
                                onTap: () {
                                  _state.changeActivePage(ActivePageName.signIn);
                                },
                              ),
                              AnimatedAndTouchableContainer(
                                color: _state.activePage == ActivePageName.logIn ? Colors.deepPurple.shade300 : null,
                                width: _state.activePage == ActivePageName.logIn ? 120 : null,
                                height: _state.activePage == ActivePageName.logIn ? 80 : null,
                                child: Center(
                                  child: Text("Log In",
                                      style: _state.activePage == ActivePageName.logIn
                                          ? Theme.of(context).textTheme.labelLarge
                                          : Theme.of(context).textTheme.labelSmall),
                                ),
                                onTap: () {
                                  _state.changeActivePage(ActivePageName.logIn);
                                },
                              )
                            ],
                          );
                        })),
                  ],
                )),
            const Spacer(
              flex: 8,
            )
          ],
        ),
      );
}
