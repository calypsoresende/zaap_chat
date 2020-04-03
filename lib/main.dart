import 'package:flutter/material.dart';
import 'package:zaapchat/ui/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations Intro',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  AnimationController animController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animController =
        AnimationController(vsync: this, duration: Duration(seconds: 10));

    animation = CurvedAnimation(
        parent: animController, curve: Curves.fastLinearToSlowEaseIn);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
//          animController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        //      animController.forward();
      }
    });

    animController.forward();
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //Background
        Container(
          color: Colors.redAccent,
        ),

        //Retangulo 0
        Container(
          child: GrowTransition(
            child: LogoWidget(color: Colors.lightGreen, rotation: 135),
            animation: animation,
          ),
        ),
        //Retangulo 1
        Container(
          child: GrowTransition(
            child: LogoWidget(color: Colors.lightGreen, rotation: 45

            ),
            animation: animation,
          ),
        ),
      ],
    );
  }
}

class LogoWidget extends StatelessWidget {

  final Color color;
  final double rotation;

  LogoWidget({@required this.color, @required this.rotation});

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: new AlwaysStoppedAnimation(rotation / 360),
      child: Container(
          decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(36)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            offset: Offset(4, 4.0),
            blurRadius: 10.0,
          ),
        ],
      )),
    );
  }
}

class GrowTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;
  final bool loop;
  final _sizeTween = Tween<double>(begin: 0, end: 600);
  final _offsetTween = Tween<Offset>(begin: Offset(0, 5.0), end: Offset.zero);

  GrowTransition({@required this.child, @required this.animation, this.loop});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Align(
          alignment: Alignment.center,
          child: SlideTransition(
            position: _offsetTween.animate(animation),
            child: SizedBox(
              width: 500,//_sizeTween.evaluate(animation),
              height: 500,//_sizeTween.evaluate(animation),
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }
}
