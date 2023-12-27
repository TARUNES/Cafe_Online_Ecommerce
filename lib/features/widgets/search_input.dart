import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const SearchBox(
      {super.key, required this.hintText, required this.controller});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: (text) {
        setState(() {}); // Update the state to trigger a rebuild
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        prefixIcon: Icon(
          Icons.search_rounded,
          color: Colors.black45,
        ),
        hintText: widget.hintText,
        hintStyle: GoogleFonts.syne(
          textStyle: TextStyle(
            color: Colors.black45,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
