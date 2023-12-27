import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SugarNotify extends StatelessWidget {
  final bool IsSugar;
  const SugarNotify({super.key, required this.IsSugar});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: IsSugar
              ? Colors.redAccent.withOpacity(0.6)
              : Colors.greenAccent.withOpacity(0.6)),
      child: Center(
        child: Text(IsSugar ? 'With Sugar' : 'Sugar Free',
            style: GoogleFonts.syne(fontSize: 14, color: Colors.black87)),
      ),
    );
  }
}
