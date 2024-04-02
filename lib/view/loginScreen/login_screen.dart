// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexedhub/view/loginScreen/components/checkbox.dart';
import 'package:nexedhub/view/loginScreen/components/forgot_links.dart';
import 'package:nexedhub/view/loginScreen/components/login_button.dart';
import 'package:nexedhub/view/loginScreen/components/login_image.dart';
import 'package:nexedhub/view/loginScreen/components/login_textfield.dart';
import 'package:nexedhub/view/loginScreen/components/my_app_bar.dart';

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
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Center(
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

                //Username section 👤👤👤👤👤👤
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
                ),
                SizedBox(
                  height: 30,
                ),

                //Password Section 🔑🔑🔑🔑🔑🔑
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Contraseña",
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
                  controller: passwordController,
                  hintText: "Ingrese su contraseña",
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                MyCheckbox(),
                SizedBox(
                  height: 20,
                ),
                LogInButton(),
                SizedBox(
                  height: 25,
                ),
                ForgotUserAndPassword(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
