import '../../../../models/paypal_amount_model.dart';
import '../../../../models/paypal_items_list_model.dart';

({PayPalItemsModel palItemsListModel, PayPalAmountModel payPalAmountModel}) getTransactionData(){
  Details details = Details(shipping: '0', shippingDiscount: 0, subtotal: '100');
  PayPalAmountModel payPalAmountModel = PayPalAmountModel(
    currency: 'USD',
    total: '100',
    details: details,
  );
  List<Items> itemsLiat = [
    Items(
      currency: 'USD',
      name: 'APPLE1',
      price: '10',
      quantity: 4,
    ),
    Items(
      currency: 'USD',
      name: 'APPLE2',
      price: '10',
      quantity: 6,
    )
  ];
  PayPalItemsModel palItemsListModel = PayPalItemsModel(items: itemsLiat);
  return (payPalAmountModel :payPalAmountModel, palItemsListModel :palItemsListModel);
}