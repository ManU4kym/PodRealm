import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;

   const Avatar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 52, 59, 53),
          borderRadius: BorderRadius.circular(55),
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}
