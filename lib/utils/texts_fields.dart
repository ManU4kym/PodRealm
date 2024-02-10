import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFields extends StatelessWidget {
  final String txt;
  final Color? color;
  final double size;
  const TextFields(
      {super.key, required this.txt, required this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        txt,
        style: GoogleFonts.aDLaMDisplay(
          fontSize: size,
          color: color,
        ),
      ),
    );
  }
}
