class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final String customerId;

  String convert({required String amount}){
    double doubleNum=double.parse(amount);
    int intNum=doubleNum.toInt();
    bool isInt=doubleNum-intNum==0;
    if(isInt) {
      return (intNum*100).toString();
    }
    else {
      double newNumber=double.parse((doubleNum*100).toStringAsFixed(2));
      if(newNumber-newNumber.toInt()==0) {
        return newNumber.toInt().toString();
      }
      return newNumber.toString();
    }
  }

  PaymentIntentInputModel({required this.amount, required this.currency, required this.customerId});

  toJson() {
    return {
      'amount': convert(amount: amount),
      'currency': currency,
      'customer':customerId
    };
  }
}
