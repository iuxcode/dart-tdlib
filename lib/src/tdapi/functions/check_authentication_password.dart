part of '../index.dart';

/// Checks the authentication password for correctness.
/// Works only when the current authorization state is [authorizationStateWaitPassword]
class CheckAuthenticationPassword extends TdFunction {
  CheckAuthenticationPassword({required this.password});

  static const CONSTRUCTOR = 'checkAuthenticationPassword';

  /// callback sign
  dynamic extra;

  /// [password] to check
  String password;

  @override
  String getConstructor() => CONSTRUCTOR;

  /// Parse from a json
  // CheckAuthenticationPassword.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password": this.password,
      "@extra": this.extra,
    };
  }
}
