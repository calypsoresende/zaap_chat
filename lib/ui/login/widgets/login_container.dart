import 'package:flutter/material.dart';
import 'package:zaapchat/ui/login/widgets/input_field.dart';
import 'package:zaapchat/ui/login/widgets/signup_button.dart';

class LoginContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputField(
              hint: "Usuário",
              icon: Icons.person_outline,
            ),
            SizedBox(
              height: 16,
            ),
            InputField(
              hint: "Senha",
              obscure: true,
              icon: Icons.lock_outline,
            ),
            SizedBox(
              height: 160,
            ),
            SignUpButton(caption: "Não possui uma conta? Cadastre-se.",),

          ],
        ),
      ),
    );
  }
}
