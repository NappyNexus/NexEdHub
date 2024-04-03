import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexedhub/view/loginScreen/Screens/admin_log_screen.dart';
import 'package:nexedhub/view/loginScreen/components/checkbox.dart';
import 'package:nexedhub/view/loginScreen/components/forgot_links.dart';
import 'package:nexedhub/view/loginScreen/components/indicator_text.dart';
import 'package:nexedhub/view/loginScreen/components/login_button.dart';
import 'package:nexedhub/view/loginScreen/components/login_image.dart';
import 'package:nexedhub/view/loginScreen/components/login_textfield.dart';
import 'package:nexedhub/view/loginScreen/components/login_title.dart';
import 'package:nexedhub/view/loginScreen/components/my_app_bar.dart';
import 'package:nexedhub/view/loginScreen/components/toggle_switch.dart';
import 'package:nexedhub/model/auth_service.dart';

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
                LoginTitle(title: "Iniciar Sesión en NexEdHub"),
                const SizedBox(
                  height: 30,
                ),
                //Username section 👤👤👤👤👤👤
                const IndicatorText(placeholder: "Nombre de usuario"),
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
                const IndicatorText(placeholder: "Contraseña"),
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
                LogInButton(
                  onPressed: () async {
                    final message = await AuthService().login(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                    if (message!.contains('Success')) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const AdminLogScreen(),
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                //recovery link
                const ForgotUserAndPassword(),
                const SizedBox(
                  height: 40,
                ),
                MyToggleSwitch(
                  onToggle: (index) {},
                ),
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
