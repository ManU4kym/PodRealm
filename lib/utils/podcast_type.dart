import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PodcastType extends StatefulWidget {
  final String text;
  const PodcastType({super.key, required this.text});

  @override
  State<PodcastType> createState() => _PodcastTypeState();
}

class _PodcastTypeState extends State<PodcastType> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          height: 50,
          width: 115,
          decoration: BoxDecoration(
            color: isPressed
                ? const Color.fromARGB(255, 85, 101, 64)
                : const Color.fromARGB(255, 34, 34, 14),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
              child: Text(
            widget.text,
            style: GoogleFonts.abyssinicaSil(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
