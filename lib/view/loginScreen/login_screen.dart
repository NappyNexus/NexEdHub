import 'package:flutter/material.dart';
//import 'package:nexedhub/view/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        title: Text(
          "NexEdHub",
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900, /*fontSize: 5*/
            ),
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
