import 'package:flutter/material.dart';
import '../../useful/radius.dart';
import '../../widgets/containers/touchable_and_animated_container.dart';
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

  Widget get builder => SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Stack(
                    children: [
                      _bottomStackWidget(),
                      _positionedMiddleRadiusContainerStackItem(),
                      _positionedTopStackItem(),
                    ],
                  )),
              Expanded(
                flex: 8,
                child: Observer(
                  builder: (context) {
                    return _state.activePageReturner();
                  },
                ),
              )
            ],
          ),
        ),
      );

  Container _bottomStackWidget() {
    return Container();
  }

  Positioned _positionedMiddleRadiusContainerStackItem() {
    return Positioned(
      bottom: _state.animatedContainerPassiveHeight / 2,
      right: 0,
      left: 0,
      top: -(_state.animatedContainerPassiveHeight / 2),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.only(bottomLeft: AppRadius.mediumCircleRadius(), bottomRight: AppRadius.mediumCircleRadius())),
      ),
    );
  }

  Positioned _positionedTopStackItem() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Observer(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [_animatedContainer(), _animatedContainer2()],
          );
        }));
  }

  AnimatedAndTouchableContainer _animatedContainer2() {
    return AnimatedAndTouchableContainer(
      color: _state.animatedContainerColor(ActivePageName.logIn),
      width: _state.animatedContainerWidht(ActivePageName.logIn),
      height: _state.animatedContainerPassiveHeight,
      child: Center(
        child: Text(_state.animatContainerText2, style: _state.animatedContainerTextStyle(context, ActivePageName.logIn)),
      ),
      onTap: () {
        _state.changeActivePage(ActivePageName.logIn);
      },
    );
  }

  AnimatedAndTouchableContainer _animatedContainer() {
    return AnimatedAndTouchableContainer(
      color: _state.animatedContainerColor(ActivePageName.signIn),
      width: _state.animatedContainerWidht(ActivePageName.signIn),
      height: _state.animatedContainerPassiveHeight,
      child: Center(
        child: Text(
          _state.animatContainerText1,
          style: _state.animatedContainerTextStyle(context, ActivePageName.signIn),
        ),
      ),
      onTap: () {
        _state.changeActivePage(ActivePageName.signIn);
      },
    );
  }
}
