import 'package:flutter/material.dart';
import 'package:payment_getways/modules/widgets/payment_method_list_view.dart';
import '../../shared/componants/custom_widgets/custom_button.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodListView(),
          SizedBox(height: 30,),
          CustomButton(title: 'Continue'),
        ],
      ),
    );
  }
}