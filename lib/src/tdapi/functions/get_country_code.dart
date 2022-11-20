part of '../index.dart';

/// Uses the current IP address to find the current country.
/// Returns two-letter ISO 3166-1 alpha-2 country code. Can be called before authorization
class GetCountryCode extends TdFunction {
  GetCountryCode();

  /// Parse from a json
  GetCountryCode.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'getCountryCode';

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }
}
