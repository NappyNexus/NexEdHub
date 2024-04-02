import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotUserAndPassword extends StatelessWidget {
  const ForgotUserAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("taped");
      },
      splashColor: Colors.blue.withAlpha(50),
      child: Text(
        "¿Olvidó su nombre de usuario o contraseña?",
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Color(0xFF616f8a),
              fontSize: 13,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
