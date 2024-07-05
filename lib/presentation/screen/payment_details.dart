import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment/presentation/screen/payment_details_view_body.dart';

import '../../core/utlis/styles.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payment Details",
          style: Styles.style25,
        ),
      ),
      body: PaymentDetailsViewBody(),
    );
  }
}
