import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhiteCircleLeft extends StatelessWidget {
  const WhiteCircleLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: -20,
        bottom: MediaQuery.sizeOf(context).height * .2,
        child: CircleAvatar(
          backgroundColor: Colors.white,
        ));
  }
}
