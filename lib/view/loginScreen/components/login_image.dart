import 'package:flutter/material.dart';

class LogInImage extends StatelessWidget {
  const LogInImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: const DecorationImage(
          image: AssetImage('assets/office-buildings-trees.jpg'),
          fit: BoxFit.cover, // Ensure image covers the entire container
        ),
      ),
      width: 497,
      height: 223, // Set width and height if needed
    );
  }
}
