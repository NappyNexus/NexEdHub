import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontSize: 25,
        ),
      ),
    );
  }
}
