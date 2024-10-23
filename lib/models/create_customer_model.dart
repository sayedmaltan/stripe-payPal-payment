class CreateCustomerModel {
  String? id;
  String? object;
  Null address;
  int? balance;
  int? created;
  Null currency;
  Null defaultSource;
  bool? delinquent;
  Null description;
  Null discount;
  String? email;
  String? invoicePrefix;
  InvoiceSettings? invoiceSettings;
  bool? livemode;
  Metadata? metadata;
  String? name;
  int? nextInvoiceSequence;
  Null phone;
  Null shipping;
  String? taxExempt;
  Null testClock;

  CreateCustomerModel({this.id, this.object, this.address, this.balance, this.created, this.currency, this.defaultSource, this.delinquent, this.description, this.discount, this.email, this.invoicePrefix, this.invoiceSettings, this.livemode, this.metadata, this.name, this.nextInvoiceSequence, this.phone, this.shipping, this.taxExempt, this.testClock});

  CreateCustomerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    address = json['address'];
    balance = json['balance'];
    created = json['created'];
    currency = json['currency'];
    defaultSource = json['default_source'];
    delinquent = json['delinquent'];
    description = json['description'];
    discount = json['discount'];
    email = json['email'];
    invoicePrefix = json['invoice_prefix'];
    invoiceSettings = json['invoice_settings'] != null ? new InvoiceSettings.fromJson(json['invoice_settings']) : null;
    livemode = json['livemode'];
    metadata = json['metadata'] != null ? new Metadata.fromJson(json['metadata']) : null;
    name = json['name'];
    nextInvoiceSequence = json['next_invoice_sequence'];
    phone = json['phone'];
    shipping = json['shipping'];
    taxExempt = json['tax_exempt'];
    testClock = json['test_clock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['object'] = object;
    data['address'] = address;
    data['balance'] = balance;
    data['created'] = created;
    data['currency'] = currency;
    data['default_source'] = defaultSource;
    data['delinquent'] = delinquent;
    data['description'] = description;
    data['discount'] = discount;
    data['email'] = email;
    data['invoice_prefix'] = invoicePrefix;
    if (invoiceSettings != null) {
      data['invoice_settings'] = invoiceSettings!.toJson();
    }
    data['livemode'] = livemode;
    if (metadata != null) {
      data['metadata'] = metadata!.toJson();
    }
    data['name'] = name;
    data['next_invoice_sequence'] = nextInvoiceSequence;
    data['phone'] = phone;
    data['shipping'] = shipping;
    data['tax_exempt'] = taxExempt;
    data['test_clock'] = testClock;
    return data;
  }
}

class InvoiceSettings {
  Null customFields;
  Null defaultPaymentMethod;
  Null footer;
  Null renderingOptions;

  InvoiceSettings({this.customFields, this.defaultPaymentMethod, this.footer, this.renderingOptions});

  InvoiceSettings.fromJson(Map<String, dynamic> json) {
    customFields = json['custom_fields'];
    defaultPaymentMethod = json['default_payment_method'];
    footer = json['footer'];
    renderingOptions = json['rendering_options'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['custom_fields'] = customFields;
    data['default_payment_method'] = defaultPaymentMethod;
    data['footer'] = footer;
    data['rendering_options'] = renderingOptions;
    return data;
  }
}

class Metadata {



Metadata.fromJson(Map<String, dynamic> json) {
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
return data;
}
}