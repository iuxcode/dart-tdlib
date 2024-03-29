part of '../index.dart';

class GetTopChats extends TdFunction {
  /// Returns a list of frequently used chats. Supported only if the chat info database is enabled
  GetTopChats({this.category, this.limit});

  /// [category] Category of chats to be returned
  TopChatCategory? category;

  /// [limit] The maximum number of chats to be returned; up to 30
  int? limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetTopChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "category": this.category == null ? null : this.category!.toJson(),
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getTopChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
