import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexedhub/view/loginScreen/components/checkbox.dart';
import 'package:nexedhub/view/loginScreen/components/forgot_links.dart';
import 'package:nexedhub/view/loginScreen/components/login_button.dart';
import 'package:nexedhub/view/loginScreen/components/login_image.dart';
import 'package:nexedhub/view/loginScreen/components/login_textfield.dart';
import 'package:nexedhub/view/loginScreen/components/my_app_bar.dart';
import 'package:nexedhub/view/loginScreen/components/toggle_switch.dart';

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
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 500,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const LogInImage(),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Iniciar Sesión en NexEdHub",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
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
                const SizedBox(
                  height: 10,
                ),
                MyTextField(
                  controller: emailController,
                  hintText: "Ingrese su nombre de usuario",
                  obscureText: false,
                ),
                const SizedBox(
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
                const SizedBox(
                  height: 10,
                ),
                MyTextField(
                  controller: passwordController,
                  hintText: "Ingrese su contraseña",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyCheckbox(),
                const SizedBox(
                  height: 20,
                ),
                const LogInButton(),
                const SizedBox(
                  height: 25,
                ),
                //recovery link
                const ForgotUserAndPassword(),
                const SizedBox(
                  height: 40,
                ),
                const MyToggleSwitch(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
