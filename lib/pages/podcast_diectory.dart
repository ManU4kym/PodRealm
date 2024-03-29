import 'dart:ui';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pod_realm/utils/avatar_ic.dart';
import 'package:pod_realm/utils/icon_partial.dart';
import 'package:pod_realm/utils/image_contain.dart';
import 'package:pod_realm/utils/logo_text.dart';
import 'package:pod_realm/utils/podcast_type.dart';
import 'package:pod_realm/utils/texts_fields.dart';

class PodDirectory extends StatelessWidget {
  const PodDirectory({super.key});

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
            size: 32,
          ),
          _icon(),
          _icon2(),
          _textF(),
          const Positioned(
            top: 190,
            child: Row(
              children: [
                Avatar(image: 'assets/avatar.jpg'),
                Avatar(image: 'assets/avatar1.jpg'),
                Avatar(image: 'assets/avatar2.jpg'),
                Avatar(image: 'assets/avatar3.jpg'),
                Avatar(image: 'assets/avatar4.jpg'),
              ],
            ),
          ),
          Positioned(
            top: 265,
            child: TextFields(
              txt: 'Top podcast of the week',
              size: 28,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          const Positioned(
            top: 305,
            child: Row(
              children: [
                PodcastType(text: 'All Podcast'),
                PodcastType(text: 'Design'),
                PodcastType(text: 'Music'),
                PodcastType(text: 'Politics'),
              ],
            ),
          ),
          const Positioned(
            top: 365,
            child: Row(
              children: [
                ImageContainer(
                  image: 'assets/castty.jpg',
                ),
                ImageContainer(
                  image: 'assets/poddy.jpg',
                ),
                ImageContainer(
                  image: 'assets/jj.jpg',
                ),
              ],
            ),
          ),
          Positioned(
              bottom:20,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                            height: 90,
                            width: 332,
                            decoration: BoxDecoration(
                              color:Color.fromARGB(255, 195, 204, 188),
                              borderRadius: BorderRadius.circular(35),
                            ),
                  child: const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Spacer(),
                        IconPd(iconny: Boxicons.bx_home_alt),
                        Spacer(),
                        IconPd(iconny: Icons.stream),
                        Spacer(),
                        IconPd(iconny: Icons.favorite_outline),
                        Spacer(),
                        IconPd(iconny: Icons.person),
                        Spacer(),
                      ],
                    ),
                  ),
                          ),
              ))
        ],
      ),
    );

  }

  _icon() {
    return const Positioned(
      top: 54,
      right: 70,
      child: IconPd(iconny: Boxicons.bx_search),
    );
  }

  _icon2() {
    return const Positioned(
      top: 54,
      right: 10,
      child: IconPd(iconny: Icons.notifications),
    );
  }

  _textF() {
    return Positioned(
      top: 130,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Popular artist',
          style: GoogleFonts.aDLaMDisplay(
            fontSize: 31,
            color: Colors.grey[100],
          ),
        ),
      ),
    );
  }
}
