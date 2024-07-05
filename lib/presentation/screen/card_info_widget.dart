import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utlis/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 73,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Image.asset("lib/core/asstes/images/logo.png"),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  'Credit Card',
                  style: Styles.style18,
                ),
                Text('Mastercard **78'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
