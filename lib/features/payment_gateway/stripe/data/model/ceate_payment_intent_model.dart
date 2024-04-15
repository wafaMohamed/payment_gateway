class CreatePaymentIntentModel {
  String? id;
  String? object;
  int? amount;
  int? amountCapturable;
  AmountDetails? amountDetails;
  int? amountReceived;
  dynamic application;
  dynamic applicationFeeAmount;
  AutomaticPaymentMethods? automaticPaymentMethods;
  dynamic canceledAt;
  dynamic cancellationReason;
  String? captureMethod;
  String? clientSecret;
  String? confirmationMethod;
  int? created;
  String? currency;
  dynamic customer;
  dynamic description;
  dynamic invoice;
  dynamic lastPaymentError;
  dynamic latestCharge;
  bool? livemode;
  Metadata? metadata;
  dynamic nextAction;
  dynamic onBehalfOf;
  dynamic paymentMethod;
  PaymentMethodOptions? paymentMethodOptions;
  List<String>? paymentMethodTypes;
  dynamic processing;
  dynamic receiptEmail;
  dynamic review;
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  String? status;
  dynamic transferData;
  dynamic transferGroup;

  CreatePaymentIntentModel(
      {this.id,
      this.object,
      this.amount,
      this.amountCapturable,
      this.amountDetails,
      this.amountReceived,
      this.application,
      this.applicationFeeAmount,
      this.automaticPaymentMethods,
      this.canceledAt,
      this.cancellationReason,
      this.captureMethod,
      this.clientSecret,
      this.confirmationMethod,
      this.created,
      this.currency,
      this.customer,
      this.description,
      this.invoice,
      this.lastPaymentError,
      this.latestCharge,
      this.livemode,
      this.metadata,
      this.nextAction,
      this.onBehalfOf,
      this.paymentMethod,
      this.paymentMethodOptions,
      this.paymentMethodTypes,
      this.processing,
      this.receiptEmail,
      this.review,
      this.setupFutureUsage,
      this.shipping,
      this.source,
      this.statementDescriptor,
      this.statementDescriptorSuffix,
      this.status,
      this.transferData,
      this.transferGroup});

  CreatePaymentIntentModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    object = json["object"];
    amount = (json["amount"] as num).toInt();
    amountCapturable = (json["amount_capturable"] as num).toInt();
    amountDetails = json["amount_details"] == null
        ? null
        : AmountDetails.fromJson(json["amount_details"]);
    amountReceived = (json["amount_received"] as num).toInt();
    application = json["application"];
    applicationFeeAmount = json["application_fee_amount"];
    automaticPaymentMethods = json["automatic_payment_methods"] == null
        ? null
        : AutomaticPaymentMethods.fromJson(json["automatic_payment_methods"]);
    canceledAt = json["canceled_at"];
    cancellationReason = json["cancellation_reason"];
    captureMethod = json["capture_method"];
    clientSecret = json["client_secret"];
    confirmationMethod = json["confirmation_method"];
    created = (json["created"] as num).toInt();
    currency = json["currency"];
    customer = json["customer"];
    description = json["description"];
    invoice = json["invoice"];
    lastPaymentError = json["last_payment_error"];
    latestCharge = json["latest_charge"];
    livemode = json["livemode"];
    metadata =
        json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]);
    nextAction = json["next_action"];
    onBehalfOf = json["on_behalf_of"];
    paymentMethod = json["payment_method"];
    paymentMethodOptions = json["payment_method_options"] == null
        ? null
        : PaymentMethodOptions.fromJson(json["payment_method_options"]);
    paymentMethodTypes = json["payment_method_types"] == null
        ? null
        : List<String>.from(json["payment_method_types"]);
    processing = json["processing"];
    receiptEmail = json["receipt_email"];
    review = json["review"];
    setupFutureUsage = json["setup_future_usage"];
    shipping = json["shipping"];
    source = json["source"];
    statementDescriptor = json["statement_descriptor"];
    statementDescriptorSuffix = json["statement_descriptor_suffix"];
    status = json["status"];
    transferData = json["transfer_data"];
    transferGroup = json["transfer_group"];
  }

  static List<CreatePaymentIntentModel> fromList(
      List<Map<String, dynamic>> list) {
    return list.map((map) => CreatePaymentIntentModel.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["object"] = object;
    _data["amount"] = amount;
    _data["amount_capturable"] = amountCapturable;
    if (amountDetails != null) {
      _data["amount_details"] = amountDetails?.toJson();
    }
    _data["amount_received"] = amountReceived;
    _data["application"] = application;
    _data["application_fee_amount"] = applicationFeeAmount;
    if (automaticPaymentMethods != null) {
      _data["automatic_payment_methods"] = automaticPaymentMethods?.toJson();
    }
    _data["canceled_at"] = canceledAt;
    _data["cancellation_reason"] = cancellationReason;
    _data["capture_method"] = captureMethod;
    _data["client_secret"] = clientSecret;
    _data["confirmation_method"] = confirmationMethod;
    _data["created"] = created;
    _data["currency"] = currency;
    _data["customer"] = customer;
    _data["description"] = description;
    _data["invoice"] = invoice;
    _data["last_payment_error"] = lastPaymentError;
    _data["latest_charge"] = latestCharge;
    _data["livemode"] = livemode;
    if (metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["next_action"] = nextAction;
    _data["on_behalf_of"] = onBehalfOf;
    _data["payment_method"] = paymentMethod;
    if (paymentMethodOptions != null) {
      _data["payment_method_options"] = paymentMethodOptions?.toJson();
    }
    if (paymentMethodTypes != null) {
      _data["payment_method_types"] = paymentMethodTypes;
    }
    _data["processing"] = processing;
    _data["receipt_email"] = receiptEmail;
    _data["review"] = review;
    _data["setup_future_usage"] = setupFutureUsage;
    _data["shipping"] = shipping;
    _data["source"] = source;
    _data["statement_descriptor"] = statementDescriptor;
    _data["statement_descriptor_suffix"] = statementDescriptorSuffix;
    _data["status"] = status;
    _data["transfer_data"] = transferData;
    _data["transfer_group"] = transferGroup;
    return _data;
  }
}

class PaymentMethodOptions {
  Card? card;
  Link? link;

  PaymentMethodOptions({this.card, this.link});

  PaymentMethodOptions.fromJson(Map<String, dynamic> json) {
    card = json["card"] == null ? null : Card.fromJson(json["card"]);
    link = json["link"] == null ? null : Link.fromJson(json["link"]);
  }

  static List<PaymentMethodOptions> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => PaymentMethodOptions.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (card != null) {
      _data["card"] = card?.toJson();
    }
    if (link != null) {
      _data["link"] = link?.toJson();
    }
    return _data;
  }
}

class Link {
  dynamic persistentToken;

  Link({this.persistentToken});

  Link.fromJson(Map<String, dynamic> json) {
    persistentToken = json["persistent_token"];
  }

  static List<Link> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Link.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["persistent_token"] = persistentToken;
    return _data;
  }
}

class Card {
  dynamic installments;
  dynamic mandateOptions;
  dynamic network;
  String? requestThreeDSecure;

  Card(
      {this.installments,
      this.mandateOptions,
      this.network,
      this.requestThreeDSecure});

  Card.fromJson(Map<String, dynamic> json) {
    installments = json["installments"];
    mandateOptions = json["mandate_options"];
    network = json["network"];
    requestThreeDSecure = json["request_three_d_secure"];
  }

  static List<Card> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Card.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["installments"] = installments;
    _data["mandate_options"] = mandateOptions;
    _data["network"] = network;
    _data["request_three_d_secure"] = requestThreeDSecure;
    return _data;
  }
}

class Metadata {
  Metadata();

  Metadata.fromJson(Map<String, dynamic> json) {}

  static List<Metadata> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Metadata.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class AutomaticPaymentMethods {
  bool? enabled;

  AutomaticPaymentMethods({this.enabled});

  AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
  }

  static List<AutomaticPaymentMethods> fromList(
      List<Map<String, dynamic>> list) {
    return list.map((map) => AutomaticPaymentMethods.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enabled"] = enabled;
    return _data;
  }
}

class AmountDetails {
  Tip? tip;

  AmountDetails({this.tip});

  AmountDetails.fromJson(Map<String, dynamic> json) {
    tip = json["tip"] == null ? null : Tip.fromJson(json["tip"]);
  }

  static List<AmountDetails> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => AmountDetails.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (tip != null) {
      _data["tip"] = tip?.toJson();
    }
    return _data;
  }
}

class Tip {
  Tip();

  Tip.fromJson(Map<String, dynamic> json) {}

  static List<Tip> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Tip.fromJson(map)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}
