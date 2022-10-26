part of '../index.dart';

/// Contains a temporary identifier of validated order information,
/// which is stored for one hour. Also contains the available shipping options
class ValidatedOrderInfo extends TdObject {
  ValidatedOrderInfo({
    required this.orderInfoId,
    required this.shippingOptions,
    this.extra,
  });

  /// Parse from a json
  factory ValidatedOrderInfo.fromJson(Map<String, dynamic> json) =>
      ValidatedOrderInfo(
          orderInfoId: json['order_info_id'],
          shippingOptions: List<ShippingOption>.from(
              (json['shipping_options'] ?? [])
                  .map((item) => ShippingOption.fromJson(item))
                  .toList()),
          extra: json['@extra']);

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'validatedOrderInfo';

  /// callback sign
  dynamic extra;

  /// [orderInfoId] Temporary identifier of the order information
  String orderInfoId;

  /// [shippingOptions] Available shipping options
  List<ShippingOption> shippingOptions;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "order_info_id": orderInfoId,
      "shipping_options": shippingOptions.map((i) => i.toJson()).toList(),
    };
  }
}
