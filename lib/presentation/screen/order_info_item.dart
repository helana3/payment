import 'package:flutter/cupertino.dart';
import 'package:payment/core/utlis/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem(
      {super.key, required this.itemName, required this.itemPrice});
  final String itemName;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          itemName,
          style: Styles.style18,
        ),
        Spacer(),
        Text(
          itemPrice,
          style: Styles.style18,
        ),
      ],
    );
  }
}
