


   import 'package:flutter/widgets.dart';

import '../atomikWidget/password_text_field.dart';

class LogInPasswordTextField extends StatefulWidget {
     const LogInPasswordTextField({super.key, required TextEditingController controller,
      required void Function(String value) onChange}):_ctrl=controller,_onChange=onChange;
     final TextEditingController _ctrl;
     final void Function(String value) _onChange;
     @override
     State<LogInPasswordTextField> createState() => _LogInPasswordTextFieldState();
   }
   
   class _LogInPasswordTextFieldState extends State<LogInPasswordTextField> {
     @override
     Widget build(BuildContext context) {
       return PasswordTextField(
         controller: widget._ctrl,
         onChanged: widget._onChange,
       );
     }
   }