import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utlis/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.onTap, required this.title, this.isLoading = false, required this.color});

  final void Function()? onTap;
  final bool isLoading;
  final String title;
 final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(16),
        ),
        height: 70,
        child: Center(
            child: isLoading
                ? Center(child: CircularProgressIndicator())
                : Text(
                    "$title",
                    style: Styles.style25,
                  )),
      ),
    );
  }
}
