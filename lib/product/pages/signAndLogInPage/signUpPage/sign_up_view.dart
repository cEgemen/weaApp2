import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../useful/padding.dart';
import '../../../widgets/buttons/templatesButtons/sign_up_button.dart';
import '../../../widgets/textFields/atomikWidget/password_text_field.dart';
import 'sign_up_view_state.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final SignUpViewState _state = SignUpViewState();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return builder;
  }

  Widget get builder => SafeArea(
          child: Padding(
        padding: const AppPadding.normalHorizontalPadding(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Expanded(flex: 6, child: _formColumn()),
              Expanded(flex: 2, child: _signUpButtonRow()),
              const Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ));

  Column _formColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const AppPadding.normalOnlyBottomPadding() + const AppPadding.largeOnlyBottomPadding(),
          child: _userNameTextFieldRow(),
        ),
        Padding(
          padding: const AppPadding.normalOnlyBottomPadding() + const AppPadding.largeOnlyBottomPadding(),
          child: _emailTextFieldRow(),
        ),
        Padding(
          padding: const AppPadding.normalOnlyBottomPadding() + const AppPadding.largeOnlyBottomPadding(),
          child: _passwordTextFieldRow(),
        ),
      ],
    );
  }

  Row _signUpButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Observer(builder: (_) {
          return SignUpButton(
            onPressed: _state.isButtonReady ? () {} : null,
          );
        }),
      ],
    );
  }

  Row _passwordTextFieldRow() {
    return Row(
      children: [
        Expanded(
            child: PasswordTextField(
          controller: _state.passwordField,
          onChanged: (value) {
            _state.checkPasswordField();
          },
        )),
        Observer(builder: (_) {
          return _state.setCircleCardIcon(_state.isPasswordFieldReady);
        })
      ],
    );
  }

  Row _emailTextFieldRow() {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: _state.emailField,
          onChanged: (value) {
            _state.checkEmailField();
          },
          autofillHints: const [AutofillHints.email],
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(label: Text(_state.emailTextFieldText), prefixIcon: const Icon(Icons.email_outlined)),
        )),
        Observer(builder: (context) => _state.setCircleCardIcon(_state.isEmailFieldReady))
      ],
    );
  }

  Row _userNameTextFieldRow() {
    return Row(
      children: [
        Expanded(
            child: TextField(
          controller: _state.nameField,
          onChanged: (value) {
            _state.checkNameField();
          },
          autofillHints: const [AutofillHints.name, AutofillHints.givenName],
          decoration: InputDecoration(label: Text(_state.nameTextFieldText), prefixIcon: const Icon(Icons.person_outline_outlined)),
        )),
        Observer(builder: (_) {
          return _state.setCircleCardIcon(_state.isNameFieldReady);
        })
      ],
    );
  }
}
