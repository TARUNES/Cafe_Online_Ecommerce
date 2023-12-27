import 'package:e_commerce/features/screens/login_page.dart';
import 'package:e_commerce/features/screens/signup_page.dart';
import 'package:flip_card/flip_card.dart';

import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(210, 180, 156, 1),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset('assets/coffee-beans.png').image,
                fit: BoxFit.cover)),
        child: FlipCard(
          key: cardKey,
          front: LoginPage(onFlip: () {
            cardKey.currentState!.toggleCard();
          }),
          back: SignupPage(onFlip: () {
            cardKey.currentState!.toggleCard();
          }),
          flipOnTouch: false,
        ),
      ),
    );
  }
}
