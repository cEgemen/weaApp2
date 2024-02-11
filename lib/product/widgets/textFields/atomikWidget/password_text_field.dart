import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({TextEditingController ? controller,void Function(String value) ? onChanged,super.key}):_ctrl=controller,_onChange = onChanged;
  final TextEditingController ? _ctrl;
  final void Function(String  value) ?_onChange;
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final String _labelText = "Password";
  bool _obsecure = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget._ctrl,
      obscureText: _obsecure,
      onChanged:widget._onChange,
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
