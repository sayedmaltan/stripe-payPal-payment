import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key, required this.form, required this.autoValidateMode});
  final GlobalKey<FormState> form;
  final AutovalidateMode autoValidateMode;

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber='';
  String expiryDate='';
  String cardHolderName='';
  String cvvCode='';
  bool showBackView=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible:true ,
          onCreditCardWidgetChange: (p0) {

          },
        ),
        CreditCardForm(
            autovalidateMode: widget.autoValidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (model) {
              cardNumber=model.cardNumber;
              expiryDate=model.expiryDate;
              cardHolderName=model.cardHolderName;
              cvvCode=model.cvvCode;
              showBackView=model.isCvvFocused;
              setState(() {
              });
            },
            formKey: widget.form
        ),

      ],
    );
  }
}
