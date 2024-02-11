import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:pod_realm/utils/icon_partial.dart';
import 'package:pod_realm/utils/logo_text.dart';

class PodDirectory extends StatelessWidget {
  const PodDirectory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black54,
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 8),
        child: Row(
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
      ),
    );
  }
}
