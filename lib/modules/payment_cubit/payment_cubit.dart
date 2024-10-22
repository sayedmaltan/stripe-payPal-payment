import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_getways/modules/payment_cubit/payment_states.dart';
import 'package:payment_getways/shared/services/stripe_services.dart';

import '../../models/payment_intent_input_model.dart';

class PaymentCubit extends Cubit<PaymentStates>{
  PaymentCubit():super(InitialPaymentState());
  StripeServices stripeServices=StripeServices();

  static PaymentCubit getCubit(context){
   return BlocProvider.of(context);
  }

  Future makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(LoadingPaymentState());
   try{
     await stripeServices.makePayment(paymentIntentInputModel: paymentIntentInputModel);
     emit(SuccessPaymentState());
   }
   catch (e){
     emit(FailurePaymentState(e.toString()));
   }
  }

@override
  void onChange(Change<PaymentStates> change) {
    log(change.toString());
    super.onChange(change);
  }

}