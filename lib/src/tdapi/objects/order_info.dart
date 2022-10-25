part of '../index.dart';

/// Order information
class OrderInfo extends TdObject {
  OrderInfo({
    required this.name,
    required this.phoneNumber,
    required this.emailAddress,
    this.shippingAddress,
    this.extra,
  });

  /// Parse from a json
  factory OrderInfo.fromJson(Map<String, dynamic> json) => OrderInfo(
        name: json['name'],
        phoneNumber: json['phone_number'],
        emailAddress: json['email_address'],
        shippingAddress: json['shipping_address'] != null
            ? Address.fromJson(json['shipping_address'])
            : null,
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'orderInfo';

  /// [emailAddress] Email address of the user
  String emailAddress;

  /// callback sign
  dynamic extra;

  /// [name] Name of the user
  String name;

  /// [phoneNumber] Phone number of the user
  String phoneNumber;

  /// [shippingAddress] Shipping address for this order; may be null
  Address? shippingAddress;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "phone_number": this.phoneNumber,
      "email_address": this.emailAddress,
      "shipping_address": this.shippingAddress?.toJson(),
    };
  }
}
