import 'package:flutter/cupertino.dart';

import '../../core/utlis/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style24,
        ),
        Spacer(),
        Text(
          value,
          style: Styles.style24,
        ),
      ],
    );
  }
}
