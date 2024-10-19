import 'package:flutter/material.dart';
import 'package:payment_getways/modules/widgets/barcode_info.dart';
import 'package:payment_getways/modules/widgets/card_type_item.dart';
import 'package:payment_getways/modules/widgets/thank_you_payment.dart';
import 'package:payment_getways/modules/widgets/total_price_item.dart';
import 'package:payment_getways/shared/utils/styles.dart';

class ThankYouContainer extends StatelessWidget {
  const ThankYouContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0 + 16, right: 11, left: 11),
        child: Column(
          children: [
            const Text('Thank you!', style: Styles.style25),
            Text('Your transaction was successful', style: Styles.style20),
            const SizedBox(
              height: 42,
            ),
            const ThankYouPayment(
              title: 'Date',
              value: '01/24/23',
            ),
            const SizedBox(
              height: 20,
            ),
            const ThankYouPayment(
              title: 'Time',
              value: '10:15 AM',
            ),
            const SizedBox(
              height: 20,
            ),
            const ThankYouPayment(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              color: Color(0xffC7C7C7),
              height: 60,
              thickness: 2,
            ),
            const TotalPriceItem(info: 'Total', price: r'$50.97'),
            const SizedBox(height: 11,),
            const CardTypeItem(),
            const Spacer(),
            const BarcodeInfo(),
            SizedBox(height: ((MediaQuery.sizeOf(context).height * 0.2)+20)/2-29,)
          ],
        ),
      ),
    );
  }
}
