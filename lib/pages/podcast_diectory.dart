import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:pod_realm/utils/avatar_ic.dart';
import 'package:pod_realm/utils/icon_partial.dart';
import 'package:pod_realm/utils/logo_text.dart';
import 'package:pod_realm/utils/texts_fields.dart';

class PodDirectory extends StatelessWidget {
  const PodDirectory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black54,
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                LogoCon(
                  size: 38,
                ),
                SizedBox(
                  width: 65,
                ),
                IconPd(
                  iconny: Boxicons.bx_search,
                ),
                SizedBox(
                  width: 6,
                ),
                IconPd(
                  iconny: Icons.notifications,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextFields(
              txt: 'Popular artist',
              size: 30,
              color: Color.fromARGB(255, 176, 170, 170),
            ),
            Row(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
