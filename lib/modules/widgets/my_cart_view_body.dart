import 'package:flutter/material.dart';
import 'package:payment_getways/modules/widgets/bottom_sheet.dart';
import 'package:payment_getways/modules/widgets/total_price_item.dart';
import 'package:payment_getways/shared/componants/custom_widgets/custom_button.dart';
import 'card_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(child: Image.asset('assets/images/basket.png')),
          const SizedBox(
            height: 25,
          ),
          const PaymentMethodsBottomSheet(
            info: 'Order Subtotal',
            price: r'92.17',
          ),
          const SizedBox(
            height: 3,
          ),
          const PaymentMethodsBottomSheet(
            info: 'Discount',
            price: r'$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const PaymentMethodsBottomSheet(
            info: 'Shipping',
            price: r'$8',
          ),
          const Divider(
            height: 32,
            color: Color(0xffc7c7c7),
            thickness: 2,
          ),
          const TotalPriceItem(info: 'Total', price: r'100.17'),
          const SizedBox(
            height: 12,
          ),
           CustomButton(
             title: 'Complete Payment',
            onTap: () {
               // Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentDetailsView(),));
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return const BottomSheetWidget();
                  }
              );
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

