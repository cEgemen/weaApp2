import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({String? Function(String?)? validator,super.key}):_validator=validator;
  final String? Function(String?)? _validator;
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final String _labelText = "Password";
  bool _obsecure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget._validator,
      obscureText: _obsecure,
      autofillHints: const [AutofillHints.password, AutofillHints.newPassword],
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          label: Text(_labelText),
          prefixIcon: const Icon(Icons.lock_outline),
          suffixIcon: InkWell(
              onTap: () {
                _updateState();
              },
              child: Icon(_updateIcon()))),
    );
  }

  IconData _updateIcon() {
    return _obsecure != true ? Icons.visibility_off_outlined : Icons.visibility_outlined;
  }

  void _updateState() {
    setState(() {
      _obsecure = !_obsecure;
    });
  }
}
