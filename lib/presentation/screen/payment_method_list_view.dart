import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

import '../../core/utlis/api_keys.dart';
import '../../data/model/paybal_model/amount_model/amount_model.dart';
import '../../data/model/paybal_model/amount_model/details.dart';
import '../../data/model/paybal_model/item_list_model/item.dart';
import '../../data/model/paybal_model/item_list_model/item_list_model.dart';
import '../../data/model/payment_intent_input_model.dart';
import '../manager/payment_cubit.dart';
import 'CustomContainer.dart';


class paymentMethodsListView extends StatefulWidget {
  const paymentMethodsListView({
    super.key,
  });

  @override
  State<paymentMethodsListView> createState() => _paymentMethodsListViewState();
}

class _paymentMethodsListViewState extends State<paymentMethodsListView> {
  final List<String> paymentMethodsItem = const [
    "lib/core/asstes/images/cardImage.png",
    "lib/core/asstes/images/paypalImage.png"
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Customcontainer(
              image: paymentMethodsItem[index],
              isActive: activeIndex == index,
              onTap: () {
                setState(() {
                  activeIndex = index;
                });

                // Execute specific code based on the selected payment method
                if (index == 1) { // Assuming index 1 is PayPal
                  _handlePaypalPayment();
                } else {
                  // Handle other payment methods
                  _handleCardPayment();
                }
              },
            ),
          );
        },
      ),
    );
  }

  void _handlePaypalPayment() {
    var amount=AmountModel(
        total: "100",
        currency: "USD",
        details: Details(
            shipping: "0",
            shippingDiscount: 0,
            subtotal: "100"
        )
    );



    List<OrderItemModel> orders=[
      OrderItemModel(
          currency: "USD",
          price: "10",
          name:"Apple",
          quantity: 4
      ),

      OrderItemModel(
          quantity: 5,
          price: "12",
          currency: "USD",
          name: "Pineapple"
      )
    ];

    var itemList=ItemListModel(items: orders);

    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId:ApiKeys.clientID,
        secretKey: ApiKeys.payBalSecretKey,
        transactions:  [
          {
            "amount": amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": itemList.toJson()
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pop(context);
        },
        onError: (error) {
          log("onError: $error");
          Navigator.pop(context);
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }





















    void _handleCardPayment() {
      PaymentIntentInputModel paymentIntentInputModel =
      PaymentIntentInputModel(
          amount: 10,
          currency: "USD",
          customerId: "cus_QPDnYiv0VQ1uc2");
      BlocProvider.of<PaymentCubit>(context).makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
    }
}
