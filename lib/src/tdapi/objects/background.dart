part of '../index.dart';

class Background extends TdObject {
  /// Describes a chat background
  Background({
    required this.id,
    this.isDefault = false,
    this.isDark = false,
    required this.name,
    this.document,
    required this.type,
    this.extra,
  });

  /// Parse from a json
  factory Background.fromJson(Map<String, dynamic> json) {
    return Background(
      id: int.parse(json['id']),
      isDefault: json['is_default'],
      isDark: json['is_dark'],
      name: json['name'],
      document:
          json['document'] != null ? Document.fromJson(json['document']) : null,
      type: BackgroundType.fromJson(json['type']),
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'background';

  /// [document] Document with the background; may be null. Null only for filled backgrounds
  Document? document;

  /// callback sign
  dynamic extra;

  /// [id] Unique background identifier
  int id;

  /// [isDark] True, if the background is dark and is recommended to be used with dark theme
  bool isDark;

  /// [isDefault] True, if this is one of default backgrounds
  bool isDefault;

  /// [name] Unique background name
  String name;

  /// [type] Type of the background
  BackgroundType type;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "is_default": this.isDefault,
      "is_dark": this.isDark,
      "name": this.name,
      "document": this.document?.toJson(),
      "type": this.type.toJson(),
    };
  }
}
