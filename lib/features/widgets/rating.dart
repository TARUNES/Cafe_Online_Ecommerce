import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingStar extends StatefulWidget {
  final double rating;
  final int no_rating;

  const RatingStar({super.key, required this.rating, required this.no_rating});

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.star_rounded,
            color: Colors.amber,
          ),
          SizedBox(
            width: 2,
          ),
          Text(widget.rating.toString(),
              style: GoogleFonts.sora(fontSize: 18, color: Colors.black87)),
          Text('(${widget.no_rating.toString()})',
              style: GoogleFonts.sora(fontSize: 14, color: Colors.black45))
        ],
      ),
    );
  }
}
