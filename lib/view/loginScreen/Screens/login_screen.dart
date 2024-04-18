import 'package:flutter/material.dart';
import 'package:nexedhub/main.dart';
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
import 'package:supabase_flutter/supabase_flutter.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _signIn() async {
    try {
      final response = await supabase.auth.signInWithPassword(
          email: "${emailController.text}@gmail.com",
          password: passwordController.text);

      if (response.session == null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("error mmg")));
      } else {
        // Login successful, navigate to the home screen
        //Navigator.pushReplacementNamed(context, '/home');
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const AdminLogScreen(),
          ),
        );
        //print("succes mmg we made it");
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Unexpected error: $e')));
    }
  }

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
                const LoginTitle(title: "Iniciar Sesión en NexEdHub"),
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
                  lenght: 490,
                  height: 50,
                  placeholder: "Iniciar Sesion",
                  onPressed: () {
                    setState(() {
                      _signIn();
                    });
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
                CustomToggleSwitch(
                  position: 0,
                  onToggle: () {
                    setState(() {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const AdminLogScreen(),
                        ),
                      );
                    });
                  },
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
