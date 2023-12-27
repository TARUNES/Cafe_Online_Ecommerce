import 'dart:ui';

import 'package:e_commerce/features/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/product_page.dart';

class HomeCard extends StatefulWidget {
  final String hint;
  final double price;
  final String imageUrl;
  final String category;
  final bool sugarfree;
  final double rating;
  final bool discount;
  final int discount_percentage;
  const HomeCard(
      {super.key,
      required this.hint,
      required this.price,
      required this.imageUrl,
      required this.category,
      required this.rating,
      required this.discount,
      required this.discount_percentage,
      required this.sugarfree});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(
              sugarfree: widget.sugarfree,
              name: widget.hint,
              price: widget.price,
              imageUrl: widget.imageUrl,
              category: widget.category,
              discount: widget.discount,
              rating: widget.rating,
              discount_percentage: widget.discount_percentage,
            ),
          ),
        );
      },
      child: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
          height: 260,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.4)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.hint,
                      style: GoogleFonts.oswald(
                          letterSpacing: 1,
                          fontSize: 15,
                          color: Colors.black87)),
                  Text('\$ ${widget.price}',
                      style: GoogleFonts.oswald(
                          letterSpacing: 1, fontSize: 25, color: Colors.black)),
                ],
              )
            ],
          )),
    );
  }
}
