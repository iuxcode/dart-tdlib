part of '../index.dart';

/// Represents a part of the text that needs to be formatted in some unusual way
class TextEntity extends TdObject {
  TextEntity({required this.offset, required this.length, required this.type});

  /// Parse from a json
  factory TextEntity.fromJson(Map<String, dynamic> json) => TextEntity(
        offset: json['offset'],
        length: json['length'],
        type: TextEntityType.fromJson(json['type']),
      );

  static const CONSTRUCTOR = 'textEntity';

  /// [length] Length of the entity, in UTF-16 code units
  int length;

  /// [offset] Offset of the entity, in UTF-16 code units
  int offset;

  /// [type] Type of the entity
  TextEntityType type;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "offset": this.offset,
      "length": this.length,
      "type": this.type.toJson(),
    };
  }
}
