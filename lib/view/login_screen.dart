import 'package:flutter/material.dart';
//import 'package:nexedhub/view/styles.dart';

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
        elevation: 1,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        leading: Image.asset(
          "assets/Asset1.png",
          height: 5,
        ),
      ),
    );
  }
}
