import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final String _labelText ="Password";
  bool _obsecure = true;
  final int _maxLenght = 6;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obsecure,
      maxLength: _maxLenght,
      autofillHints: const [AutofillHints.password, AutofillHints.newPassword],
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      decoration:InputDecoration(label: Text(_labelText), prefixIcon:const Icon(Icons.lock_outline),suffixIcon: InkWell(onTap:() {
        _updateState();
      },child: Icon(_updateIcon()))),
    );
  }
    
     IconData _updateIcon()
     {
       return _obsecure != true ? Icons.visibility_off_outlined : Icons.visibility_outlined;
     }
      void _updateState()
     {
       setState(() {
          _obsecure = !_obsecure;
       });
     }
}
