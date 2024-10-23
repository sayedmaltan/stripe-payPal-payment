import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_getways/modules/widgets/payment_method_list_view.dart';
import '../payment_cubit/payment_cubit.dart';
import 'custom_button_cubit.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    BlocProvider<PaymentCubit>(
        create: (context) => PaymentCubit(),
      child:  const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PaymentMethodListView(),
            SizedBox(height: 30,),
            CustomButtonCubit(),
          ],
        ),
      )

    );
  }
}
