import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
final AnimationController controller;

StaggerAnimation({@required this.controller});


Widget _buildAnimation(BuildContext context, Widget child){
 return Padding(
   padding: EdgeInsets.only(bottom: 50),
   child: InkWell(
     child: Container(
       width: 320,
       height: 60,
       alignment: Alignment.center,
       decoration: BoxDecoration(color: Color.fromRGBO(247, 64, 106, 1),
       borderRadius: BorderRadius.all(Radius.circular(30))
       ),
       child: Text("Entrar",
       style: TextStyle(
           color: Colors.white,
         fontSize: 20,
         fontWeight: FontWeight.w400,
         letterSpacing: .3,
       ),
       ),
     ),
     onTap: (){},
   ),

 );
}


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}
