import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * .2 + 20,
      right: 0,
      left: 0,
      child: Row(
        children: List.generate(
            20,
            (index) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      color: Colors.grey,
                      height: 2,
                    ),
                  ),
                )),
      ),
    );
  }
}
