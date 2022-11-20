part of '../index.dart';

/// Checks the authentication code. Works only when the current authorization state is [authorizationStateWaitCode]
class CheckAuthenticationCode extends TdFunction {
  CheckAuthenticationCode({required this.code});

  static const CONSTRUCTOR = 'checkAuthenticationCode';

  /// [code] The verification code received via SMS, Telegram message, phone call, or flash call
  String code;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  /// Parse from a json
  // CheckAuthenticationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code": this.code,
      "@extra": this.extra,
    };
  }
}
