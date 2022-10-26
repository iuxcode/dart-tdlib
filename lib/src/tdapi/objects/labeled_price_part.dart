part of '../index.dart';

/// Portion of the price of a product (e.g., "delivery cost", "tax amount")
class LabeledPricePart extends TdObject {
  LabeledPricePart({required this.label, required this.amount});

  /// [label] Label for this portion of the product price
  String label;

  /// [amount] Currency amount in minimal quantity of the currency
  int amount;

  /// Parse from a json
  factory LabeledPricePart.fromJson(Map<String, dynamic> json) =>
      LabeledPricePart(
        label: json['label'],
        amount: json['amount'],
      );

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "label": label,
      "amount": amount,
    };
  }

  static const CONSTRUCTOR = 'labeledPricePart';

  @override
  String getConstructor() => CONSTRUCTOR;
}
