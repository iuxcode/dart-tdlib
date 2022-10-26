part of '../index.dart';

/// A text with some entities
class FormattedText extends TdObject {
  FormattedText({required this.text, required this.entities, this.extra});

  /// Parse from a json
  factory FormattedText.fromJson(Map<String, dynamic> json) => FormattedText(
        text: json['text'],
        entities: List<TextEntity>.from((json['entities'] ?? [])
            .map((item) => TextEntity.fromJson(item))
            .toList()),
        extra: json['@extra'],
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'formattedText';

  /// [entities] Entities contained in the text. Entities can be nested, but must not mutually intersect with each other..
  /// Pre, Code and PreCode entities can't contain other entities.
  /// Bold, Italic, Underline and Strikethrough entities can contain and to be contained in all other entities.
  /// All other entities can't contain each other
  List<TextEntity> entities;

  /// callback sign
  dynamic extra;

  /// [text] The text
  String text;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "entities": entities.map((i) => i.toJson()).toList(),
    };
  }
}
