//  paymentIntent Model =create payment intent(amount , currency)
//  initPaymentSheet(PaymentIntentClintSecret)
//  presentPaymentSheet()

//  for display old cards
//  createCustomerModel=crete Customer(createCustomerInputModel) while signup and save customerId
//  paymentIntentModel =create payment intent(amount , currency,customerId)
//  create ephemeralKey(customerId,stripeVersion)
//  initPaymentSheet(PaymentIntentClintSecret,ephemeralKey,customerId)
//  presentPaymentSheet()

import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getways/models/createEphemeralKeyModel.dart';
import 'package:payment_getways/models/create_customer_input_model.dart';
import 'package:payment_getways/models/create_customer_model.dart';
import 'package:payment_getways/shared/componants/api_key.dart';
import '../../models/init_payment_input_sheet_model.dart';
import '../../models/payment_intent_input_model.dart';
import '../../models/payment_intent_model.dart';
import 'api_stripe_services.dart';

class StripeServices {
  late ApiStripeServices apiStripeServices = ApiStripeServices();

  Future<PaymentIntentModel> createPaymentIntent({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    var response = await apiStripeServices.post(
        url: ApiKey.stripeCreatePaymentIntentURL,
        body: paymentIntentInputModel.toJson(),
        token: ApiKey.stripeSecretApiKey);
    return PaymentIntentModel.fromJson(response.data);
  }

  Future initPaymentSheet({required InitPaymentInputSheetModel initPaymentInputSheetModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      merchantDisplayName: 'Sayed',
      customerId:initPaymentInputSheetModel.customerId,
      customerEphemeralKeySecret: initPaymentInputSheetModel.ephemeralKey,
      paymentIntentClientSecret: initPaymentInputSheetModel.paymentIntentClintSecret,
    ));
  }

  Future presentPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<CreateCustomerModel> createCustomer({
    required CreateCustomerInputModel createCustomerInputModel,
  }) async {
    var response = await apiStripeServices.post(
        url: ApiKey.stripeCreateCustomerURL,
        body: createCustomerInputModel.toJson(),
        token: ApiKey.stripeSecretApiKey);
    return CreateCustomerModel.fromJson(response.data);
  }

  Future<EphemeralKeyModel> createEphemeralKey({
    required String customerId,
  }) async {
    var response = await apiStripeServices.post(
        url: ApiKey.stripeCreateEphemeralKeyURL,
        body: {'customer': customerId},
        token: ApiKey.stripeSecretApiKey,
        headers: {
          'Authorization': 'Bearer ${ApiKey.stripeSecretApiKey}',
          'Stripe-Version': '2024-09-30.acacia'
        });
    return EphemeralKeyModel.fromJson(response.data);
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    PaymentIntentModel paymentIntentModel = await createPaymentIntent(
        paymentIntentInputModel: paymentIntentInputModel);
    EphemeralKeyModel ephemeralKeyModel = await createEphemeralKey(
        customerId: ApiKey.stripeCustomerId,
    );
    InitPaymentInputSheetModel initPaymentInputSheetModel=InitPaymentInputSheetModel(
      paymentIntentClintSecret:paymentIntentModel.clientSecret!,
      ephemeralKey: ephemeralKeyModel.secret!,
      customerId: ApiKey.stripeCustomerId
    );
    await initPaymentSheet(initPaymentInputSheetModel:initPaymentInputSheetModel);
    await presentPaymentSheet();
  }
}
