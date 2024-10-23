import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getways/modules/payment_cubit/payment_states.dart';
import 'package:payment_getways/shared/services/stripe_services.dart';

import '../../models/payment_intent_input_model.dart';

class PaymentCubit extends Cubit<PaymentStates>{
  PaymentCubit():super(InitialPaymentState());
  StripeServices stripeServices=StripeServices();
  int activeIndex=0;

  static PaymentCubit getCubit(context){
   return BlocProvider.of(context);
  }

  Future makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(LoadingPaymentState());
   try{
     await stripeServices.makePayment(paymentIntentInputModel: paymentIntentInputModel);
     emit(SuccessPaymentState());
   }
   on StripeException catch (e) {
     emit(FailurePaymentState(e.error.message ?? 'Oops there was an error'));
   }
    catch (e){
     emit(FailurePaymentState("A payment error occurred: $e"));
   }
  }

  void changeActiveIndex(int newIndex) {
    activeIndex=newIndex;
    print(activeIndex);
    emit(ChangeActiveIndex());
  }

@override
  void onChange(Change<PaymentStates> change) {
    log(change.toString());
    super.onChange(change);
  }

}