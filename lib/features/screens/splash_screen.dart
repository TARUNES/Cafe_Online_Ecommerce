import 'package:e_commerce/features/screens/auth_page.dart';
import 'package:e_commerce/features/screens/home_page.dart';
import 'package:e_commerce/features/screens/login_page.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startanimation();
  }

  bool animate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 180, 156, 1),
      body: Stack(children: [
        AnimatedPositioned(
            duration: Duration(seconds: 1),
            top: 0,
            bottom: 90,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset('assets/coffee-splash.png'),
            )),
        AnimatedPositioned(
          duration: Duration(seconds: 1),
          curve: Curves.bounceOut,
          top: 300,
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            'assets/coffee-txt.png',
          ),
        ),
        AnimatedPositioned(
          duration: Duration(seconds: 1),
          // top: 0,
          bottom: -160,
          // left: 20,
          right: 120,
          child: Container(
            child: Image.asset(
              'assets/coffee-side.png',
              fit: BoxFit.contain,
            ),
          ),
        )
      ]),
    );
  }

  Future startanimation() async {
    await Future.delayed(Duration(milliseconds: 1300));
    setState(() {
      animate = !animate;
    });
    // await Future.delayed(Duration(milliseconds: 500));

    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AuthPage(),
        ));
  }
}
