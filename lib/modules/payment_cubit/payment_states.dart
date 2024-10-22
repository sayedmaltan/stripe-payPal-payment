abstract class PaymentStates{}

class InitialPaymentState extends PaymentStates{}

class LoadingPaymentState extends PaymentStates{}

class SuccessPaymentState extends PaymentStates{}

class FailurePaymentState extends PaymentStates{
  final String error;

  FailurePaymentState(this.error);
}
