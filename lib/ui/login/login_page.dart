import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zaapchat/ui/login/widgets/login_container.dart';
import 'package:zaapchat/ui/login/widgets/stagger_animation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {


 AnimationController _animController;

  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    Widget _buildBodyBG() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.redAccent,
            Color.fromARGB(255, 253, 181, 168),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );


    return Scaffold(

      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          _buildBodyBG(),
          Column(
            children: <Widget>[
              //TODO LOGO
              Padding(
                padding: EdgeInsets.only(top: 100,bottom: 32),
                child: Image.asset("images/logo.png",
                height: 140,
                  width: 448,
                  fit: BoxFit.contain,
                ),
              ),
                LoginContainer(),
            ],
          ),
          StaggerAnimation(controller: _animController.view),
        ],

      ),
    );
  }

}
