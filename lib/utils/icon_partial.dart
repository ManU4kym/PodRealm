import 'package:flutter/material.dart';

class IconPd extends StatefulWidget {
  final IconData iconny;
  const IconPd({super.key, required this.iconny});

  @override
  State<IconPd> createState() => _IconPdState();
}

class _IconPdState extends State<IconPd> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
      },
      /*  onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      }, */
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: isPressed
              ? Colors.white
              : const Color.fromARGB(255, 110, 102, 101),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          widget.iconny,
          color: const Color.fromARGB(255, 35, 35, 35),
          size: isPressed ? 32 : 20,
        ),
      ),
    );
  }
}
