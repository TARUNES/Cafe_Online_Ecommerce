// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:e_commerce/features/data/local_data/products.dart';
import 'package:e_commerce/features/widgets/catorgory_select.dart';
import 'package:e_commerce/features/widgets/home_card.dart';
import 'package:e_commerce/features/widgets/last_ordered.dart';
import 'package:e_commerce/features/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 180, 156, 1),
      body: Padding(
          padding: EdgeInsets.all(0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              Align(
                alignment: const AlignmentDirectional(0, -1.7),
                child: Container(
                  height: 450,
                  width: 450,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                    ),
                    color: Color.fromRGBO(129, 41, 4, 1),
                  ),
                ),
              ),
              BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                  child: Container(
                      decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ))),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Caffine Time',
                              style: GoogleFonts.lobsterTwo(
                                  letterSpacing: 1,
                                  fontSize: 30,
                                  color: Colors.white)),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.coffee_maker_outlined,
                            size: 30,
                            color: Color.fromRGBO(210, 180, 156, 1),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SearchBox(
                          hintText: "Search Your favorite Coffee",
                          controller: search),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(child: Scrollable_home()),
                    ],
                  ),
                ),
              )
            ]),
          )),
    );
  }
}

class Scrollable_home extends StatelessWidget {
  const Scrollable_home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CatogorySelector(),
          SizedBox(
            height: 20,
          ),
          LastOrdered(),
          SizedBox(
            height: 20,
          ),
          Text('Most Popular',
              style: GoogleFonts.oswald(
                  letterSpacing: 1, fontSize: 20, color: Colors.black87)),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 270,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return HomeCard(
                  sugarfree: product.sugarfree,
                  hint: product.name,
                  price: product.price,
                  imageUrl: product.imageUrl,
                  category: product.category,
                  discount: product.discount,
                  discount_percentage: product.discount_percentage,
                  rating: product.rating,
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('You Might Like',
              style: GoogleFonts.oswald(
                  letterSpacing: 1, fontSize: 20, color: Colors.black87)),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 270,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return HomeCard(
                  sugarfree: product.sugarfree,
                  hint: product.name,
                  price: product.price,
                  imageUrl: product.imageUrl,
                  category: product.category,
                  discount: product.discount,
                  discount_percentage: product.discount_percentage,
                  rating: product.rating,
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Seasonal Dishes',
              style: GoogleFonts.oswald(
                  letterSpacing: 1, fontSize: 20, color: Colors.black87)),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 270,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return HomeCard(
                  sugarfree: product.sugarfree,
                  hint: product.name,
                  price: product.price,
                  imageUrl: product.imageUrl,
                  category: product.category,
                  discount: product.discount,
                  discount_percentage: product.discount_percentage,
                  rating: product.rating,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CatogorySelector extends StatelessWidget {
  const CatogorySelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Beverages',
                  style: GoogleFonts.oswald(
                      letterSpacing: 1, fontSize: 20, color: Colors.black87)),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CatorgySelect(icon: Icon(Icons.cake_rounded), hint: "Bakery"),
                  CatorgySelect(
                      icon: Icon(Icons.local_drink_rounded), hint: "Drinks")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CatorgySelect(icon: Icon(Icons.coffee), hint: "Coffee"),
                  CatorgySelect(
                      icon: Icon(Icons.stars_rounded), hint: "Signatured")
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
