// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexedhub/view/styles.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyToggleSwitch extends StatelessWidget {
  const MyToggleSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle activeTextStyle = GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );

    TextStyle inactiveTextStyle = GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );

    return ToggleSwitch(
      customTextStyles: [inactiveTextStyle, activeTextStyle],
      borderColor: [CustomColors.switchbg],
      borderWidth: 5,
      minWidth: 300,
      cornerRadius: 15,
      activeBgColors: [
        [Colors.white],
        [Colors.white]
      ],
      activeFgColor: Colors.black,
      inactiveBgColor: CustomColors.switchbg,
      inactiveFgColor: Color(0xFF616f8a),
      initialLabelIndex: 1,
      totalSwitches: 2,
      labels: ['Maestro', 'Admin'],
      radiusStyle: true,
      onToggle: (index) {
        print('switched to: $index');
      },
    );
  }
}
