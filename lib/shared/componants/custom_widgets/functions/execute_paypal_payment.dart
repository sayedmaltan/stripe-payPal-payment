import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_getways/modules/thank_you_view.dart';
import '../../../../models/paypal_amount_model.dart';
import '../../../../models/paypal_items_list_model.dart';
import '../../api_key.dart';

void executePayPalPayment(
    BuildContext context,
    ({
      PayPalItemsModel palItemsListModel,
      PayPalAmountModel payPalAmountModel
    }) getTransaction) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => PaypalCheckoutView(
      sandboxMode: true,
      clientId: ApiKey.payPalClientID,
      secretKey: ApiKey.payPalSecret,
      transactions: [
        {
          "amount": getTransaction.payPalAmountModel.toJson(),
          "description": "The payment transaction description.",
          "item_list": getTransaction.palItemsListModel.toJson()
        }
      ],
      note: "Contact us for any questions on your order.",
      onSuccess: (Map params) async {
        log("onSuccess: $params");
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ThankYouView(),));
      },
      onError: (error) {
        for(int i=0;i<2;i++) {
          Navigator.pop(context);
        }
        log("onError: $error");
        var snackBar=  SnackBar(content: Text('onError: ${error.toString()}') );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      onCancel: () {
        print('cancelled:');
        Navigator.pop(context);
      },
    ),
  ));
}
