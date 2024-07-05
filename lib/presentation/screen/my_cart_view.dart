import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/core/utlis/app_bar.dart';
import 'package:payment/data/repo/checkout_repo_impl.dart';
import 'package:payment/presentation/screen/payment_details.dart';
import 'package:payment/presentation/screen/payment_details_view_body.dart';
import 'package:payment/presentation/screen/payment_method_list_view.dart';
import 'package:payment/presentation/screen/payment_methods_bottom_sheet.dart';
import 'package:payment/presentation/screen/total_price.dart';

import '../manager/payment_cubit.dart';
import 'custom_button.dart';
import 'order_info_item.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Expanded(
                child: Image.asset("lib/core/asstes/images/basketImage.png")),
            const SizedBox(
              height: 18,
            ),
            const OrderInfoItem(
              itemName: "Order Subtotal",
              itemPrice: r"42.97$",
            ),
            SizedBox(
              height: 2,
            ),
            const OrderInfoItem(
              itemName: "Discount",
              itemPrice: r"0$",
            ),
            SizedBox(
              height: 2,
            ),
            const OrderInfoItem(
              itemName: "Shipping",
              itemPrice: r"8$",
            ),
            Divider(
              thickness: 2,
              color: Color(0xffC7C7C7),
            ),
            SizedBox(
              height: 35,
            ),
            TotalPrice(title: "Total", value: r"50.97$"),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              color:  Colors.green[400],
              title: "Complete Payment",
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    context: context,
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => PaymentCubit(CheckoutRepoImpl()),
                        child: PaymentMethodsBottomSheet(),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
