import 'package:flutter/material.dart';
import 'package:payment_getways/modules/widgets/custom_app_bar.dart';
import 'package:payment_getways/modules/widgets/payment_details_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: customAppBar(title: 'Payment Details'),
      body: const PaymentDetailsBody(),
    );
  }
}
