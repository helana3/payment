import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment/presentation/screen/thank_you_view_body.dart';

import '../../core/utlis/app_bar.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key, required this.date, required this.time});
  final String date;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThankYouViewBody(date: date,time: time,),
    );
  }
}
