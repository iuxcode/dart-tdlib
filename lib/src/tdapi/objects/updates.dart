part of '../index.dart';

/// Contains a list of updates
class Updates extends TdObject {
  Updates({
    required this.updates,
    this.extra,
  });

  /// Parse from a json
  factory Updates.fromJson(Map<String, dynamic> json) => Updates(
      updates: List<Update>.from((json['updates'] ?? [])
          .map((item) => Update.fromJson(item))
          .toList()),
      extra: json['@extra']);

  static const CONSTRUCTOR = 'updates';

  /// callback sign
  dynamic extra;

  /// [updates] List of updates
  List<Update> updates;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "updates": updates.map((i) => i.toJson()).toList(),
    };
  }
}
