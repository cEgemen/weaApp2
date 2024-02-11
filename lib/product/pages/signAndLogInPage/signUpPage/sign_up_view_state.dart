

import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'sign_up_view_state.g.dart';

class SignUpViewState = _SignUpViewStateBase with _$SignUpViewState;

abstract class _SignUpViewStateBase with Store {
      final String nameTextFieldText = "User Name";
      final String emailTextFieldText= "Email";
      final GlobalKey<FormState> formKey = GlobalKey<FormState>();


      
}