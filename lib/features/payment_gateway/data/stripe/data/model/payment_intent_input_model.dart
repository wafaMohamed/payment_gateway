class PaymentInetInputModel {
  final String amount;
  final String currency;

  PaymentInetInputModel({required this.amount, required this.currency});

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency,
    };
  }

// json = map
  factory PaymentInetInputModel.fromJson(Map<String, dynamic> map) {
    return PaymentInetInputModel(
      amount: map['amount'] as String,
      currency: map['currency'] as String,
    );
  }
}
