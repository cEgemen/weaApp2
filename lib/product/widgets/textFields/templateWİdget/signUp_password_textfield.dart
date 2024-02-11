


   import 'package:flutter/widgets.dart';

import '../atomikWidget/password_text_field.dart';

class SignUpPasswordTextField extends StatefulWidget {
     const SignUpPasswordTextField({super.key, required TextEditingController controller,
      required void Function(String value) onChange}):_ctrl=controller,_onChange=onChange;
     final TextEditingController _ctrl;
     final void Function(String value) _onChange;
     @override
     State<SignUpPasswordTextField> createState() => _SignUpPasswordTextFieldState();
   }
   
   class _SignUpPasswordTextFieldState extends State<SignUpPasswordTextField> {
     @override
     Widget build(BuildContext context) {
       return PasswordTextField(
         controller: widget._ctrl,
         onChanged: widget._onChange,
       );
     }
   }