import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  final double height, width, borderradius;

  final Widget child;
  const FrostedGlass(
      {super.key,
      required this.height,
      required this.width,
      required this.child,
      required this.borderradius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderradius),
      child: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                  child: Container(
                    width: width,
                    height: height,
                    child: Text(''),
                  )),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderradius),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2), width: 1.0),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.5),
                          Colors.white.withOpacity(0.2)
                        ])),
                child: child,
              )
            ],
          )),
    );
  }
}
