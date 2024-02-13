import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 170,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(35),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Image.asset(
            'assets/castty.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
