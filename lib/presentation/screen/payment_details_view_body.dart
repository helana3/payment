import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment/presentation/screen/custom_button.dart';
import 'package:payment/presentation/screen/payment_method_list_view.dart';
import 'package:payment/presentation/screen/thank_you_view_body.dart';

import 'custom_credit_card.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: paymentMethodsListView(),
        ),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          formKey: formKey,
          autovalidateMode: autovalidateMode,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
              child: CustomButton(
                color:  Colors.green[400],
                title: "Pay",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    // Capture current date and time
                    DateTime now = DateTime.now();
                    String formattedDate = "${now.day}/${now.month}/${now.year}";
                    String formattedTime = "${now.hour}:${now.minute}";

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThankYouViewBody(
                          date: formattedDate,
                          time: formattedTime,
                        ),
                      ),
                    );
                  }  else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
