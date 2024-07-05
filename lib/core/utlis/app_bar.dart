import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment/core/utlis/styles.dart';

AppBar CustomAppBar() {
  return AppBar(
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 35,
          )),
      Spacer(
        flex: 3,
      ),
      Text(
        "My Cart",
        style: Styles.style25,
      ),
      Spacer(
        flex: 4,
      )
    ],
  );
}
