import 'package:e_commerce/features/screens/beverages_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatorgySelect extends StatefulWidget {
  final Icon icon;
  final String hint;

  const CatorgySelect({super.key, required this.icon, required this.hint});

  @override
  State<CatorgySelect> createState() => _CatorgySelectState();
}

class _CatorgySelectState extends State<CatorgySelect> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BeveragesPage(title: widget.hint),
            ));
      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: 50,
        width: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white.withOpacity(0.3),
        ),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.3),
              ),
              child: Center(child: widget.icon),
            ),
            SizedBox(
              width: 8,
            ),
            Row(
              children: [
                Text(widget.hint,
                    style: GoogleFonts.syne(
                        letterSpacing: 1, fontSize: 15, color: Colors.black)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
