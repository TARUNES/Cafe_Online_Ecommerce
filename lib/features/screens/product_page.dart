import 'package:e_commerce/features/screens/home_page.dart';
import 'package:e_commerce/features/screens/payment_page.dart';
import 'package:e_commerce/features/widgets/like_wishadd.dart';
import 'package:e_commerce/features/widgets/rating.dart';
import 'package:e_commerce/features/widgets/size_selector.dart';
import 'package:e_commerce/features/widgets/sugar-notify.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/back_arrow.dart';

class ProductPage extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String category;
  final double price;
  final double rating;
  final bool discount;
  final int discount_percentage;
  final bool sugarfree;

  const ProductPage(
      {required this.name,
      required this.imageUrl,
      required this.category,
      required this.price,
      required this.rating,
      required this.discount,
      required this.discount_percentage,
      required this.sugarfree});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 180, 156, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [LikeHeart()],
        leading: BackArrow(),
        centerTitle: true,
        title: Text("Details",
            style: GoogleFonts.oswald(
                letterSpacing: 1, fontSize: 20, color: Colors.black)),
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  height: 250,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      widget.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.name,
                      style: GoogleFonts.syne(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                  RatingStar(
                    no_rating: 230,
                    rating: 3,
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              SugarNotify(IsSugar: widget.sugarfree),
              SizedBox(
                height: 20,
              ),
              SizeSelector(),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Price',
                            style: GoogleFonts.syne(
                                fontSize: 20, color: Colors.black54),
                          ),
                          Text(
                            '\$${widget.price.toString()}',
                            style: GoogleFonts.sora(
                                fontSize: 30,
                                color: Color.fromRGBO(129, 41, 4, 1)),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentPage(
                                    category: widget.category,
                                    imageUrl: widget.imageUrl,
                                    price: widget.price,
                                    name: widget.name),
                              ));
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            'Buy Now',
                            style: GoogleFonts.sora(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(129, 41, 4, 0.6),
                              borderRadius: BorderRadius.circular(13)),
                          height: 75,
                          width: 200,
                        ),
                      )
                    ],
                  )
                ],
              ))
            ],
          )),
    );
  }
}
