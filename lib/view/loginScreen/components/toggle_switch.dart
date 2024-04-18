import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nexedhub/view/styles.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomToggleSwitch extends StatelessWidget {
  const CustomToggleSwitch(
      {super.key, required this.onToggle, required this.position});

  final Function() onToggle;
  final int position;

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
      borderColor: const [CustomColors.switchbg],
      borderWidth: 5,
      minWidth: 300,
      cornerRadius: 15,
      activeBgColors: const [
        [Colors.white],
        [Colors.white]
      ],
      activeFgColor: Colors.black,
      inactiveBgColor: CustomColors.switchbg,
      inactiveFgColor: const Color(0xFF616f8a),
      initialLabelIndex: position,
      totalSwitches: 2,
      labels: const ['Maestro', 'Admin'],
      radiusStyle: true,
      onToggle: (index) {
        onToggle();
      },
    );
  }
}
