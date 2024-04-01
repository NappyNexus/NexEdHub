// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:nexedhub/view/styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexedhub/view/loginScreen/components/login_image.dart';
import 'package:nexedhub/view/loginScreen/components/login_textfield.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              LogInImage(),
              SizedBox(
                height: 50,
              ),
              Text(
                "Iniciar Sesión en NexEdHub",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nombre de usuario",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: emailController,
                hintText: "Ingrese su nombre de usuario",
                obscureText: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
