import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeHeart extends StatefulWidget {
  const LikeHeart({super.key});

  @override
  State<LikeHeart> createState() => _LikeHeartState();
}

class _LikeHeartState extends State<LikeHeart> {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.only(right: 20), child: LikeButton());
  }
}
