import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment/presentation/screen/thank_you_card.dart';
import 'package:payment/presentation/screen/white_circle.dart';
import 'package:payment/presentation/screen/white_circule_right.dart';

import 'custom_check_icon.dart';
import 'dashed_line.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key, required this.date, required this.time});

  final String date;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ThankYouCard(date: date, time: time),
            DashedLine(),
            WhiteCircleLeft(),
            WhiteCirculeRight(),
            Positioned(
              right: 0,
              left: 0,
              top: -20,
              child: CustomCheckIcon(),
            ),
          ],
        ),
      ),
    );
  }
}
