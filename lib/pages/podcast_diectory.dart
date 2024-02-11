import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pod_realm/utils/avatar_ic.dart';
import 'package:pod_realm/utils/icon_partial.dart';
import 'package:pod_realm/utils/logo_text.dart';
import 'package:pod_realm/utils/podcast_type.dart';
import 'package:pod_realm/utils/texts_fields.dart';

class PodDirectory extends StatelessWidget {
  const PodDirectory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
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
                  width: 10,
                ),
                const Text(
                  "PodRealm",
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 65,
                ),
                const IconPd(
                  iconny: Boxicons.bx_search,
                ),
                const SizedBox(
                  width: 6,
                ),
                const IconPd(
                  iconny: Icons.notifications,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const TextFields(
              txt: 'Popular artist',
              size: 30,
              color: Color.fromARGB(255, 176, 170, 170),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Avatar(
                    image: 'assets/avatar1.jpg',
                  ),
                  Avatar(
                    image: 'assets/avatar.jpg',
                  ),
                  Avatar(
                    image: 'assets/avatar2.jpg',
                  ),
                  Avatar(
                    image: 'assets/avatar3.jpg',
                  ),
                  Avatar(
                    image: 'assets/avatar4.jpg',
                  ),
                  Avatar(
                    image: 'assets/avatar1.jpg',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Top Podcast of the week',
              style: GoogleFonts.zeyada(
                color: const Color.fromARGB(255, 168, 167, 167),
                fontSize: 38,
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PodcastType(
                    text: 'All Podcast',
                  ),
                  PodcastType(
                    text: 'Design',
                  ),
                  PodcastType(
                    text: 'Music',
                  ),
                  PodcastType(
                    text: 'Politics',
                  ),
                  PodcastType(
                    text: 'True Crime',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
