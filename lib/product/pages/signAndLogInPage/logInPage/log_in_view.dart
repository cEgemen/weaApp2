import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/base/base_view.dart';
import '../../../useful/padding.dart';
import '../../../widgets/buttons/templatesButtons/log_in_button.dart';
import '../../../widgets/textFields/templateW%C4%B0dget/logIn_password_text_field.dart';
import 'log_in_view_state.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) => BaseView<LogInViewModel>(
        viewModel: LogInViewModel(),
        build: (context, viewmodel) => builder(context, viewmodel),
        initial: (viewModel) {
          viewModel.setBuildContext(context);
          viewModel.init();
        },
      );

  Widget builder(BuildContext context, LogInViewModel state) => Padding(
        padding: const AppPadding.normalHorizontalPadding(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const AppPadding.normalOnlyBottomPadding() + const AppPadding.largeOnlyBottomPadding(),
                        child: _emailTextField(state),
                      ),
                      Padding(
                        padding: const AppPadding.normalOnlyBottomPadding() + const AppPadding.largeOnlyBottomPadding(),
                        child: passwordTextField(state),
                      )
                    ],
                  )),
              Expanded(
                flex: 1,
                child: _textButton(state),
              ),
              Expanded(
                  flex: 2,
                  child: _logInButton(state)),
              const Spacer(flex: 3),
            ],
          ),
        ),
      );

  Row _emailTextField(LogInViewModel state) {
    return Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: state.emailController,
                              onChanged: (value) {
                                state.checkEmailField();
                              },
                              autofillHints: const [AutofillHints.email],
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(label: Text(state.emailTextFieldText), prefixIcon: const Icon(Icons.email_outlined)),
                            ),
                          ),
                          Observer(builder: (context) => state.setCircleCardIcon(state.isEmailFieldReady))
                        ],
                      );
  }

  Row passwordTextField(LogInViewModel state) {
    return Row(
                        children: [
                          Expanded(
                              child: LogInPasswordTextField(
                            controller: state.passwordController,
                            onChange: (value) {
                              state.checkPasswordField();
                            },
                          )),
                          Observer(builder: (_) => state.setCircleCardIcon(state.isPasswordFieldReady))
                        ],
                      );
  }

  Row _logInButton(LogInViewModel state) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Observer(
                        builder: (context) => LogInButton(
                              onPressed: state.isButtonReady ? () {} : null,
                            ))
                  ],
                );
  }

  Widget _textButton(LogInViewModel state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [TextButton(onPressed: () {}, child: Text(state.textButtonText))],
    );
  }
}
