part of '../index.dart';

/// Sets the phone number of the user and sends an authentication code to the user.
/// Works only when the current authorization state is [authorizationStateWaitPhoneNumber],
/// or if there is no pending authentication query and the current authorization state is [authorizationStateWaitCode], [authorizationStateWaitRegistration], or [authorizationStateWaitPassword]
class SetAuthenticationPhoneNumber extends TdFunction {
  SetAuthenticationPhoneNumber(
      {required this.phoneNumber, required this.settings,});

  static const CONSTRUCTOR = 'setAuthenticationPhoneNumber';

  /// callback sign
  dynamic extra;

  /// [phoneNumber] The phone number of the user, in international format
  String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number
  PhoneNumberAuthenticationSettings settings;

  @override
  String getConstructor() => CONSTRUCTOR;

  /// Parse from a json
  // SetAuthenticationPhoneNumber.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "settings": this.settings.toJson(),
      "@extra": this.extra,
    };
  }
}
