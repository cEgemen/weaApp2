import 'package:flutter/material.dart';
import '../../../useful/padding.dart';
import '../../../widgets/textFields/password_text_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return builder;
  }

  Widget get builder => SafeArea(
        child: Padding(
          padding: const AppPadding.normalHorizontalPadding(),
          child: Scaffold(
              body: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              Expanded(
                  flex: 6,
                  child: Form(
                      child: Column(
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
                  ))),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.amber,
                  )),
              const Spacer(
                flex: 1,
              )
            ],
          )),
        ),
      );

  Row _passwordTextFieldRow() {
    return const Row(
      children: [
        Expanded(child: PasswordTextField()),
        Card(
          child: Icon(Icons.done_outline),
        )
      ],
    );
  }

  Row _emailTextFieldRow() {
    return Row(
      children: [
        Expanded(
            child: TextFormField(
          autofillHints: const [AutofillHints.email],
          decoration: const InputDecoration(label: Text("Email"), prefixIcon: Icon(Icons.email_outlined)),
        )),
        SizedBox(
          child: Card(
            child: Icon(Icons.done_outline),
          ),
        )
      ],
    );
  }

  Row _userNameTextFieldRow() {
    return Row(
      children: [
        Expanded(
            child: TextFormField(
          autofillHints: const [AutofillHints.name, AutofillHints.givenName],
          decoration: const InputDecoration(label: Text("User Name"), prefixIcon: Icon(Icons.person_outline_outlined)),
        )),
        Card(
          child: Icon(Icons.done_outline),
        )
      ],
    );
  }
}
