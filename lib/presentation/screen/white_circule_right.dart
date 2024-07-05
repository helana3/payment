import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhiteCirculeRight extends StatelessWidget {
  const WhiteCirculeRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: -20,
        bottom: MediaQuery.sizeOf(context).height * .2,
        child: CircleAvatar(
          backgroundColor: Colors.white,
        ));
  }
}
