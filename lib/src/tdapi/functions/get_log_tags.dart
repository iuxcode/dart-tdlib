part of '../index.dart';

class GetLogTags extends TdFunction {
  /// Returns list of available TDLib internal log tags, for example,
  GetLogTags();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetLogTags.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLogTags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
