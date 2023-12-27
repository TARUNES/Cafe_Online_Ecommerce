import 'package:e_commerce/features/widgets/back_arrow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 180, 156, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: BackArrow(),
        centerTitle: true,
        title: Text('Wishlist',
            style: GoogleFonts.oswald(
                letterSpacing: 1, fontSize: 20, color: Colors.black)),
      ),
    );
  }
}
