part of '../index.dart';

/// Represents a single button in a bot keyboard
class KeyboardButton extends TdObject {
  KeyboardButton({
    required this.text,
    required this.type,
  });

  /// Parse from a json
  factory KeyboardButton.fromJson(Map<String, dynamic> json) => KeyboardButton(
        text: json['text'],
        type: KeyboardButtonType.fromJson(json['type']),
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'keyboardButton';

  /// [text] Text of the button
  String text;

  /// [type] Type of the button
  KeyboardButtonType type;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "type": type.toJson(),
    };
  }
}
