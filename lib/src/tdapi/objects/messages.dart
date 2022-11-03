part of '../index.dart';

/// Contains a list of messages
class Messages extends TdObject {
  Messages({
    required this.totalCount,
    this.messages = const [],
    this.extra,
  });

  /// Parse from a json
  factory Messages.fromJson(Map<String, dynamic> json) => Messages(
        totalCount: json['total_count'],
        messages: List<Message>.from((json['messages'] ?? [])
            .map((item) => Message.fromJson(item))
            .toList()),
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'messages';

  /// callback sign
  dynamic extra;

  /// [messages] List of messages; messages may be null
  List<Message> messages;

  /// [totalCount] Approximate total count of messages found
  int totalCount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "messages": this.messages.map((i) => i.toJson()).toList(),
    };
  }
}
