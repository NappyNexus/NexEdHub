import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nexedhub/view/loginScreen/Screens/login_screen.dart';
import 'package:nexedhub/view/loginScreen/components/indicator_text.dart';
import 'package:nexedhub/view/loginScreen/components/login_button.dart';
import 'package:nexedhub/view/loginScreen/components/login_textfield.dart';
import 'package:nexedhub/view/loginScreen/components/my_app_bar.dart';
import 'package:nexedhub/view/loginScreen/components/toggle_switch.dart';

class AdminLogScreen extends StatefulWidget {
  const AdminLogScreen({super.key});

  @override
  State<AdminLogScreen> createState() => _AdminLogScreenState();
}

class _AdminLogScreenState extends State<AdminLogScreen> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const IndicatorText(placeholder: "Nombre de usuario"),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: userController,
                hintText: "Ingrese su nombre de usuario",
                obscureText: false,
              ),
              const SizedBox(
                height: 30,
              ),
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
                height: 30,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: LogInButton(
                    onPressed: () {},
                    height: 50,
                    lenght: 150,
                    placeholder: "Iniciar Sesión"),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomToggleSwitch(
                position: 1,
                onToggle: () {
                  setState(() {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const LogInScreen(),
                      ),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
