import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:pod_realm/pages/podcast_diectory.dart';
import 'package:pod_realm/routes.dart';
import 'package:pod_realm/utils/texts_fields.dart';

class ButtonS extends StatelessWidget {
  const ButtonS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute (
          builder: (BuildContext context) => const PodDirectory(),
        ),);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 67, 82, 67),
            borderRadius: BorderRadius.circular(25)),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields(
                txt: 'Start Now',
                size: 12,
                color: Color.fromARGB(175, 255, 255, 255),
              ),
              Icon(
                Boxicons.bx_log_in_circle,
                size: 26,
                color: Color.fromARGB(255, 219, 197, 186),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
