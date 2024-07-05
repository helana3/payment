class PaymentIntentInputModel {
  final int amount; // يجب أن يكون رقم صحيح (integer)
  final String currency;
  final String customerId;

  PaymentIntentInputModel(
      {required this.customerId, required this.amount, required this.currency});

  Map<String, dynamic> toJson() {
    return {
      'amount': amount * 100, // تحويل المبلغ إلى القروش (cents)
      'currency': currency,
      'customer': customerId
    };
  }
}
