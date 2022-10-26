part of '../index.dart';

/// Represents a single button in an inline keyboard
class InlineKeyboardButton extends TdObject {
  InlineKeyboardButton({required this.text, required this.type});

  /// Parse from a json
  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) =>
      InlineKeyboardButton(
        text: json['text'],
        type: InlineKeyboardButtonType.fromJson(json['type']),
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'inlineKeyboardButton';

  /// [text] Text of the button
  String text;

  /// [type] Type of the button
  InlineKeyboardButtonType type;

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
