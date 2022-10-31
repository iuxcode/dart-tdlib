part of '../index.dart';

/// An object of this type can be returned on every function call, in case of an error
class TdError extends TdObject {
  TdError({
    required this.code,
    required this.message,
    this.extra,
  });

  /// Parse from a json
  factory TdError.fromJson(Map<String, dynamic> json) => TdError(
        code: json['code'],
        message: json['message'],
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'error';

  /// [code] Error code; subject to future changes.
  /// If the error code is 406, the error message must not be processed in any
  ///  way and must not be displayed to the user
  int code;

  /// callback sign
  dynamic extra;

  /// [message] Error message; subject to future changes
  String message;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code": this.code,
      "message": this.message,
    };
  }
}
