import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool obscure;
  final FormFieldValidator validator;

  InputField(
      {@required this.hint, this.icon, this.obscure = false, this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white12,
          width: 2.5,
        ),
      ),
      child: TextFormField(
        obscureText: obscure,
        validator: validator,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          contentPadding: EdgeInsets.only(
            bottom: 10,
            top: 10,
            left: 0,
            right: 10,
          ),
        ),
      ),
    );
  }
}
