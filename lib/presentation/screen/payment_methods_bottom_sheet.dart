import 'package:flutter/cupertino.dart';
import 'package:payment/presentation/screen/payment_method_list_view.dart';

import 'custom_button_bloc_consumer.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 10,
          ),
           Padding(
             padding: EdgeInsets.only(left: 10,top: 20),
               child: paymentMethodsListView()),
          SizedBox(
            height: 25,
          ),
          CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}
