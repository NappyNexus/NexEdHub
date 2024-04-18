import 'package:flutter/material.dart';
import 'package:nexedhub/view/loginScreen/Screens/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://kcxokcloqwowgeltfzhv.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtjeG9rY2xvcXdvd2dlbHRmemh2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMyOTUxMzAsImV4cCI6MjAyODg3MTEzMH0.l-jzRY3PcqkueXWglHDy-uBZL1Rl2c6n3cLVZFjBWHw',
  );

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LogInScreen(),
    );
  }
}
