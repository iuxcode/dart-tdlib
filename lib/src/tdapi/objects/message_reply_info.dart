part of '../index.dart';

/// Contains information about replies to a message
class MessageReplyInfo extends TdObject {
  MessageReplyInfo({
    required this.replyCount,
    required this.recentRepliers,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.lastMessageId,
  });

  /// Parse from a json
  factory MessageReplyInfo.fromJson(Map<String, dynamic> json) =>
      MessageReplyInfo(
        replyCount: json['reply_count'],
        recentRepliers: List<MessageSender>.from((json['recent_repliers'] ?? [])
            .map((item) => MessageSender.fromJson(item))
            .toList()),
        lastReadInboxMessageId: json['last_read_inbox_message_id'],
        lastReadOutboxMessageId: json['last_read_outbox_message_id'],
        lastMessageId: json['last_message_id'],
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageReplyInfo';

  /// [lastMessageId] Identifier of the last reply to the message
  int lastMessageId;

  /// [lastReadInboxMessageId] Identifier of the last read incoming reply to the message
  int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing reply to the message
  int lastReadOutboxMessageId;

  /// [recentRepliers] Recent repliers to the message; available in channels with a discussion supergroup
  List<MessageSender> recentRepliers;

  /// [replyCount] Number of times the message was directly or indirectly replied
  int replyCount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reply_count": replyCount,
      "recent_repliers": recentRepliers.map((i) => i.toJson()).toList(),
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
      "last_message_id": lastMessageId,
    };
  }
}
