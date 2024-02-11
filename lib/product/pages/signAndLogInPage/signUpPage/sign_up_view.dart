import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../core/extensions/context_extension.dart';
import 'sign_up_view_state.dart';
import '../../../widgets/buttons/templatesButtons/sign_up_button.dart';
import '../../../widgets/cards/circle_icon_card_widget.dart';
import '../../../useful/padding.dart';
import '../../../widgets/textFields/atomikWidget/password_text_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final SignUpViewState _state = SignUpViewState();
  @override
  Widget build(BuildContext context) {
    return builder;
  }

  Widget get builder => SafeArea(
          child: Padding(
        padding: const AppPadding.normalHorizontalPadding(),
        child: Scaffold(
          body: SingleChildScrollView(
              physics:const NeverScrollableScrollPhysics(),
              child: Container(
                height: context.height * .775,
                color: Colors.teal,
                child: Column(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(flex: 6, child: _formColumn()),
                    Expanded(flex: 2, child: _signUpButtonRow()),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ),
              )),
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
        SignUpButton(
          onPressed: () {},
        ),
      ],
    );
  }

  Row _passwordTextFieldRow() {
    return Row(
      children: [
        const Expanded(child: PasswordTextField()),
        Observer(builder: (_) {
          return CircleIIconCardWidget(icon: Icons.done_outline_outlined);
        })
      ],
    );
  }

  Row _emailTextFieldRow() {
    return Row(
      children: [
        Expanded(
            child: TextField(
          onChanged: (value) {},
          autofillHints: const [AutofillHints.email],
          decoration: InputDecoration(label: Text(_state.emailTextFieldText), prefixIcon: const Icon(Icons.email_outlined)),
        )),
        Observer(builder: (context) => CircleIIconCardWidget(icon: Icons.done_outline_outlined))
      ],
    );
  }

  Row _userNameTextFieldRow() {
    return Row(
      children: [
        Expanded(
            child: TextFormField(
          validator: (value) {},
          autofillHints: const [AutofillHints.name, AutofillHints.givenName],
          decoration: InputDecoration(label: Text(_state.nameTextFieldText), prefixIcon: const Icon(Icons.person_outline_outlined)),
        )),
        Observer(builder: (_) {
          return CircleIIconCardWidget(icon: Icons.done_outline_outlined);
        })
      ],
    );
  }
}
