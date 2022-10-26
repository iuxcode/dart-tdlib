part of '../index.dart';

/// One shipping option
class ShippingOption extends TdObject {
  ShippingOption({
    required this.id,
    required this.title,
    required this.priceParts,
  });

  /// Parse from a json
  factory ShippingOption.fromJson(Map<String, dynamic> json) => ShippingOption(
      id: json['id'],
      title: json['title'],
      priceParts: List<LabeledPricePart>.from((json['price_parts'] ?? [])
          .map((item) => LabeledPricePart.fromJson(item))
          .toList()));

  static const CONSTRUCTOR = 'shippingOption';

  /// [id] Shipping option identifier
  String id;

  /// [priceParts] A list of objects used to calculate the total shipping costs
  List<LabeledPricePart> priceParts;

  /// [title] Option title
  String title;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "price_parts": priceParts.map((i) => i.toJson()).toList(),
    };
  }
}
