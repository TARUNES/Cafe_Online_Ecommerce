import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInput extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget icon;
  const UserInput(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.icon});

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: (text) {
        setState(() {}); // Update the state to trigger a rebuild
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
        prefixIcon: widget.icon,
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
