import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_getways/models/payment_intent_input_model.dart';
import 'package:payment_getways/modules/payment_cubit/payment_cubit.dart';
import 'package:payment_getways/modules/payment_cubit/payment_states.dart';
import 'package:payment_getways/modules/thank_you_view.dart';
import '../../shared/componants/api_key.dart';
import '../../shared/componants/custom_widgets/custom_button.dart';

class CustomButtonCubit extends StatelessWidget {
  const CustomButtonCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit,PaymentStates>(
      listener: (context, state) {
      if(state is SuccessPaymentState) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ThankYouView(),));
      }
      if(state is FailurePaymentState) {
        Navigator.pop(context);
        SnackBar snackBar=SnackBar(content: Text(state.error));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
          
      },
      builder: (context, state) {
        PaymentCubit paymentCubit=PaymentCubit.getCubit(context);
        PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(amount: '100.17',currency:  'USD',customerId:ApiKey.customerId );
        return  CustomButton(
            onTap: () {
                paymentCubit.makePayment(paymentIntentInputModel: paymentIntentInputModel);
            },
            title: 'Continue',isLoading: state is LoadingPaymentState ?true:false );
      },
    
    );
  }
}