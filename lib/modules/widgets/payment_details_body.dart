import 'package:flutter/material.dart';
import 'package:payment_getways/modules/thank_you_view.dart';
import 'package:payment_getways/modules/widgets/custom_credit_card.dart';
import 'package:payment_getways/modules/widgets/payment_method_list_view.dart';
import 'package:payment_getways/shared/componants/custom_widgets/custom_button.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> form=GlobalKey();
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return    CustomScrollView(
      slivers: [
       const SliverToBoxAdapter(
         child: PaymentMethodListView() ,
       ),
        SliverToBoxAdapter(
          child: CustomCreditCard(form: form,autoValidateMode: autoValidateMode,),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
              child: Padding(
                padding:  const EdgeInsets.only(left: 16.0,right: 16,bottom: 22),
                child: CustomButton(
                  title: 'Payment',
                  onTap: () {
                    if(form.currentState!.validate())
                      {
                        form.currentState!.save();
                      }
                    else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ThankYouView(),));
                      autoValidateMode=AutovalidateMode.always;
                      setState(() {

                      });
                    }

                  },
                ),
              )
          ),
        )
      ],
    );
  }
}

