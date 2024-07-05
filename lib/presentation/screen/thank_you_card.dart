import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment/core/utlis/styles.dart';
import 'package:payment/presentation/screen/recipe_details.dart';
import 'package:payment/presentation/screen/total_price.dart';

import 'card_info_widget.dart';

class ThankYouCard extends StatelessWidget {
  final String date;
  final String time;
  const ThankYouCard({
    super.key, required this.date, required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
          color: Color(0xffD9D9D9),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.only(top: 66),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 20),
          child: Column(
            children: [
              Text(
                'Thank you!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Your transaction was successful',
                style: Styles.style18,
              ),
              SizedBox(
                height: 42,
              ),
              PaymentItemInfo(title: 'Date', value: date),
              SizedBox(
                height: 20,
              ),
              PaymentItemInfo(title: 'Time', value: time),
              SizedBox(
                height: 20,
              ),
              PaymentItemInfo(title: 'To', value: 'Sam Louis'),
              SizedBox(
                height: 20,
              ),
              Divider(thickness: 3),
              SizedBox(
                height: 20,
              ),
              TotalPrice(title: "Total", value: r"50.97$"),
              SizedBox(
                height: 30,
              ),
              CardInfoWidget(),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    FontAwesomeIcons.barcode,
                    size: 100,
                  ),
                  Container(
                    width: 103,
                    height: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffD9D9D9), // اللون الداخلي الأبيض
                      border: Border.all(
                        color: Color(0xff34A853), // لون الحواف الخضراء
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
                    child: Center(
                        child: Text(
                      "PAID",
                      style: Styles.style25.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
