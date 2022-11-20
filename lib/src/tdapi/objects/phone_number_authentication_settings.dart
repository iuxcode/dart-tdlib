part of '../index.dart';

/// Contains settings for the authentication of the user's phone number
class PhoneNumberAuthenticationSettings extends TdObject {
  PhoneNumberAuthenticationSettings({
    this.allowFlashCall = false,
    this.isCurrentPhoneNumber = false,
    this.allowSmsRetrieverApi = false,
  });

  /// Parse from a json
  factory PhoneNumberAuthenticationSettings.fromJson(
      Map<String, dynamic> json) {
    return PhoneNumberAuthenticationSettings(
      allowFlashCall: json['allow_flash_call'],
      isCurrentPhoneNumber: json['is_current_phone_number'],
      allowSmsRetrieverApi: json['allow_sms_retriever_api'],
    );
  }

  static const CONSTRUCTOR = 'phoneNumberAuthenticationSettings';

  /// [allowFlashCall] Pass true if the authentication code may be sent via flash call to the specified phone number
  bool allowFlashCall;

  /// [allowSmsRetrieverApi] For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services
  bool allowSmsRetrieverApi;

  /// [isCurrentPhoneNumber] Pass true if the authenticated phone number is used on the current device
  bool isCurrentPhoneNumber;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "allow_flash_call": this.allowFlashCall,
      "is_current_phone_number": this.isCurrentPhoneNumber,
      "allow_sms_retriever_api": this.allowSmsRetrieverApi,
    };
  }
}
