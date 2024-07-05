import 'package:flutter/cupertino.dart';
import 'package:payment/core/utlis/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  final String title;
  final String value;

  const PaymentItemInfo({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.style18.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
