import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';

class LogoCon extends StatelessWidget {
  final double size;
  const LogoCon({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 54,
      left: 15,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 18, 22, 1),
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(
              Boxicons.bx_podcast,
              color: Color.fromARGB(235, 246, 246, 246),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            "PodRealm",
            style: TextStyle(
              fontSize: size,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
