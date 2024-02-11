import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pod_realm/utils/logo_text.dart';
import 'package:pod_realm/utils/sound_wave.dart';
import 'package:pod_realm/utils/start_button.dart';
import 'package:pod_realm/utils/texts_fields.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/jj.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                color: const Color.fromARGB(223, 29, 33, 28),
              ),
            ),
          ),
          const LogoCon(
            size: 52,
          ),
          _container(),
          _micDrop(),
        ],
      ),
    );
  }

  _container() {
    return Positioned(
      bottom: 35,
      right: 30,
      /*right: 10, */
      child: Container(
        height: 470,
        width: 300,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 148, 162, 131),
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            SoundWaveVisualizer(),
            TextFields(
              txt: "Find your next \n Obsession",
              size: 34,
            ),
            TextFields(
              txt:
                  "PodRealm is not just another podcast app—it's your portal to a world of captivating audio experiences. Immerse yourself in a seamless blend of cutting-edge technology and user-friendly design as you explore a vast library of podcasts curated to match your diverse interests.",
              size: 12,
              color: Color.fromARGB(255, 75, 84, 72),
            ),
            ButtonS(),
          ],
        ),
      ),
    );
  }

  _micDrop() {
    return Positioned(
      bottom: 400,
      right: 20,
      left: 20,
      top: 170,
      child: SizedBox(
        height: 50,
        width: 10,
        /*  color: Colors.red, */
        child: Image.asset(
          'assets/miPhone.png',
        ),
      ),
    );
  }
}
