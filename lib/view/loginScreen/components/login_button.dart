import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexedhub/view/styles.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Button pressed");
      },
      child: Container(
        width: 490,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: jdpblue,
        ),
        child: Text(
          "Iniciar Sesion",
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
