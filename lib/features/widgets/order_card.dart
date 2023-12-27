import 'dart:ffi';

import 'package:e_commerce/features/widgets/quantity_selector.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCard extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String category;
  final double price;
  const OrderCard(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.category,
      required this.price});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      height: 100,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(0.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                color: Colors.transparent,
                height: double.infinity,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.syne(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                widget.category,
                style: GoogleFonts.syne(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '\$${widget.price.toString()}',
                style: GoogleFonts.sora(
                    fontSize: 28, color: Color.fromRGBO(129, 41, 4, 1)),
              )
            ],
          ),
          QuantitySelector()
        ],
      ),
    );
  }
}
