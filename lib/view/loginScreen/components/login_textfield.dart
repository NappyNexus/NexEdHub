import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      cursorColor: const Color(0xFF616f8a),
      style: GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Color(0xFF616f8a),
            fontSize: 15,
            fontWeight: FontWeight.w600),
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFf1f2f6),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFf1f2f6),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFf1f2f6),
          ),
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Color(0xFF616f8a),
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
