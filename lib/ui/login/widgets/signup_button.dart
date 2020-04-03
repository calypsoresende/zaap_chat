import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {

  final String caption;
  final Function onPress;

  SignUpButton({this.caption,this.onPress});


  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: Text(caption,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 14,

        ),),
        onPressed: onPress,

    );
  }
}
