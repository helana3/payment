import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customcontainer extends StatelessWidget {
  const Customcontainer(
      {super.key, required this.image, required this.isActive, required this.onTap});
  final String image;
  final bool isActive;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(microseconds: 600),
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white, // اللون الداخلي الأبيض
          border: Border.all(
            color:
                isActive ? Color(0xff34A853) : Colors.black, // لون الحواف الخضراء
            width: 3, // عرض الحواف
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // لون الظل
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // التمركز العمودي للظل
            ),
          ],
        ),
        child: Image.asset(image),
      ),
    );
  }
}
