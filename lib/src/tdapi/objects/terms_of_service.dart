part of '../index.dart';

/// Contains Telegram terms of service
class TermsOfService extends TdObject {
  TermsOfService({
    required this.text,
    this.minUserAge = 0,
    this.showPopup = false,
  });

  /// Parse from a json
  factory TermsOfService.fromJson(Map<String, dynamic> json) => TermsOfService(
      text: FormattedText.fromJson(json['text']),
      minUserAge: json['min_user_age'],
      showPopup: json['show_popup']);

  static const CONSTRUCTOR = 'termsOfService';

  /// [minUserAge] The minimum age of a user to be able to accept the terms; 0 if any
  int minUserAge;

  /// [showPopup] True, if a blocking popup with terms of service must be shown to the user
  bool showPopup;

  /// [text] Text of the terms of service
  FormattedText text;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "min_user_age": minUserAge,
      "show_popup": showPopup,
    };
  }
}
