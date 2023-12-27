import 'package:e_commerce/features/models/product_list_model.dart';
import 'package:e_commerce/features/screens/product_page.dart';
import 'package:e_commerce/features/widgets/frosted_glass.dart';
import 'package:e_commerce/features/widgets/rating.dart';
import 'package:e_commerce/features/widgets/sugar-notify.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BevrageCard extends StatelessWidget {
  final Product products;

  BevrageCard({required this.products});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(
              sugarfree: products.sugarfree,
              name: products.name,
              price: products.price,
              imageUrl: products.imageUrl,
              category: products.category,
              discount: products.discount,
              rating: products.rating,
              discount_percentage: products.discount_percentage,
            ),
          ),
        );
      },
      child: FrostedGlass(
          borderradius: 10,
          height: 140,
          width: double.infinity, // Set a fixed width or adjust as needed
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    products.imageUrl,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(products.name,
                            style: GoogleFonts.oswald(
                                letterSpacing: 1,
                                fontSize: 24,
                                color: Colors.black87)),
                        SizedBox(
                          width: 20,
                        ),
                        RatingStar(rating: products.rating, no_rating: 10)
                      ],
                    ),
                    Text('\$ ${products.price}',
                        style: GoogleFonts.oswald(
                            letterSpacing: 1,
                            fontSize: 20,
                            color: Colors.black)),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
