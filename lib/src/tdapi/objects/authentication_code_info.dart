part of '../index.dart';

/// Information about the authentication code that was sent
class AuthenticationCodeInfo extends TdObject {
  AuthenticationCodeInfo({
    required this.phoneNumber,
    required this.type,
    this.nextType,
    required this.timeout,
    this.extra,
  });

  /// Parse from a json
  factory AuthenticationCodeInfo.fromJson(Map<String, dynamic> json) =>
      AuthenticationCodeInfo(
        phoneNumber: json['phone_number'],
        type: AuthenticationCodeType.fromJson(json['type']),
        nextType: json['next_type'] != null
            ? AuthenticationCodeType.fromJson(json['next_type'])
            : null,
        timeout: json['timeout'],
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'authenticationCodeInfo';

  /// callback sign
  dynamic extra;

  /// [nextType] Describes the way the next code will be sent to the user; may be null
  AuthenticationCodeType? nextType;

  /// [phoneNumber] A phone number that is being authenticated
  String phoneNumber;

  /// [timeout] Timeout before the code should be re-sent, in seconds
  int timeout;

  /// [type] Describes the way the code was sent to the user
  AuthenticationCodeType type;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
      "type": type.toJson(),
      "next_type": nextType?.toJson(),
      "timeout": timeout,
    };
  }
}
