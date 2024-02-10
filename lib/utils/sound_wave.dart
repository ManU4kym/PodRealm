import 'dart:math';
import 'package:flutter/material.dart';

class SoundWaveVisualizer extends StatelessWidget {
  const SoundWaveVisualizer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 260,
        height: 50,
        color: Colors.transparent,
        child: CustomPaint(
          painter: SoundWavePainter(),
        ),
      ),
    );
  }
}

class SoundWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color.fromARGB(255, 13, 25, 13)
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final double midHeight = size.height / 2;
    const double amplitude = 2.0;
    const double frequency = 9.00002;

    final Path path = Path();
    path.moveTo(0, midHeight);

    for (double i = 0; i <= size.width; i++) {
      final double y = midHeight + sin((i * frequency)) * amplitude;
      path.lineTo(i, y);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
