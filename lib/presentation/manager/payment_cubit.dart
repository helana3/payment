import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:payment/data/model/payment_intent_input_model.dart';
import 'package:payment/data/repo/checkout_repo.dart';
part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());

    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold((failure) {
      emit(PaymentFailure(errMseeage: failure.errMessage));
    }, (r) {
      emit(PaymentSuccess());
    });
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
