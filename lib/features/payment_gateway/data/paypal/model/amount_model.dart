class AmountModel {
  String? total;
  String? currency;
  Details? details;

  AmountModel({this.total, this.currency, this.details});

  AmountModel.fromJson(Map<String, dynamic> json) {
    total = json["total"];
    currency = json["currency"];
    details = json["details"] == null ? null : Details.fromJson(json["details"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["total"] = total;
    _data["currency"] = currency;
    if(details != null) {
      _data["details"] = details?.toJson();
    }
    return _data;
  }
}

class Details {
  String? subtotal;
  String? shipping;
  int? shippingDiscount;

  Details({this.subtotal, this.shipping, this.shippingDiscount});

  Details.fromJson(Map<String, dynamic> json) {
    subtotal = json["subtotal"];
    shipping = json["shipping"];
    shippingDiscount = json["shipping_discount"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["subtotal"] = subtotal;
    _data["shipping"] = shipping;
    _data["shipping_discount"] = shippingDiscount;
    return _data;
  }
}