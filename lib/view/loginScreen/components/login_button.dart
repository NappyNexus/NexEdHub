import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexedhub/view/styles.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
    required this.onPressed,
    required this.height,
    required this.lenght,
    required this.placeholder,
  });

  final VoidCallback onPressed;
  final double lenght;
  final double height;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: lenght, //490
        height: height, //50
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColors.jdpblue,
        ),
        child: Text(
          placeholder,
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
