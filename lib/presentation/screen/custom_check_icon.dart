import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: Colors.greenAccent,
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 65,
      ),
    );
  }
}
