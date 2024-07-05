
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/presentation/screen/thank_you_view.dart';
import '../manager/payment_cubit.dart';
import 'custom_button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
         DateTime now=DateTime.now();
         String formattedDate="${now.day}/${now.month}/${now.year}";
         String formattedTime="${now.hour}:${now.minute}";
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) =>
              ThankYouView(
            date: formattedDate,
            time: formattedTime,)));
        }
        if (state is PaymentFailure) {
          Navigator.pop(context);
          SnackBar snackBar = SnackBar(content: Text(state.errMseeage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          color:  Colors.transparent,
            onTap: () {},
            isLoading: state is PaymentLoading ? true : false,
            title: "");



      },
    );
  }
}
