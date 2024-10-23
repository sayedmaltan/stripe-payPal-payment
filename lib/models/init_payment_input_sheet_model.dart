class InitPaymentInputSheetModel{
  final String paymentIntentClintSecret;
  final String ephemeralKey;
  final String customerId;

  InitPaymentInputSheetModel({required this.customerId,required this.paymentIntentClintSecret, required this.ephemeralKey});


}