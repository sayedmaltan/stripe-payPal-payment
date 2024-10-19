import 'package:flutter/material.dart';
import 'package:payment_getways/modules/widgets/payment_method.dart';

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

  int activeIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: imagesList.length,
        itemBuilder: (context, index) =>  InkWell(
          onTap: () {
            activeIndex=index;
            setState(() {

            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: PaymentMethod(
              isActive: activeIndex==index ? true : false,
              image:imagesList[index] ,
            ),
          ),
        ),
      ),
    );
  }
}
