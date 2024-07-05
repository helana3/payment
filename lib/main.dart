import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utlis/api_keys.dart';
import 'package:payment/presentation/screen/my_cart_view.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publisherKey;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'payment',
      theme: ThemeData(),
      home: const MyCartView(),
    );
  }
}
