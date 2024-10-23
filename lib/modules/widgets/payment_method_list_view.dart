import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_getways/modules/widgets/payment_method.dart';

import '../payment_cubit/payment_cubit.dart';
import '../payment_cubit/payment_states.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> imagesList=const [
    'assets/images/card.svg',
    'assets/images/paypal.svg'
  ];


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentStates>(
      listener: (context, state) {

      },
      builder: (context, state) {
        PaymentCubit paymentCubit=PaymentCubit.getCubit(context);
      return SizedBox(
        height: 63,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: imagesList.length,
          itemBuilder: (context, index) =>  InkWell(
            onTap: () {
              paymentCubit.changeActiveIndex(index);
              setState(() {
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: PaymentMethod(
                isActive: paymentCubit.activeIndex==index ? true : false,
                image:imagesList[index] ,
              ),
            ),
          ),
        ),
      );
      },

    );
  }
}
