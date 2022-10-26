part of '../index.dart';

/// Contains information about a forwarded message
class MessageForwardInfo extends TdObject {
  MessageForwardInfo({
    required this.origin,
    required this.date,
    required this.publicServiceAnnouncementType,
    this.fromChatId = 0,
    this.fromMessageId = 0,
  });

  /// Parse from a json
  factory MessageForwardInfo.fromJson(Map<String, dynamic> json) =>
      MessageForwardInfo(
        origin: MessageForwardOrigin.fromJson(json['origin']),
        date: json['date'],
        publicServiceAnnouncementType: json['public_service_announcement_type'],
        fromChatId: json['from_chat_id'],
        fromMessageId: json['from_message_id'],
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageForwardInfo';

  /// [date] Point in time (Unix timestamp) when the message was originally sent
  int date;

  /// [fromChatId] For messages forwarded to the chat with the current user (Saved Messages),
  /// to the Replies bot chat, or to the channel's discussion group, the identifier of the chat from which the message was forwarded last time;
  /// 0 if unknown
  int fromChatId;

  /// [fromMessageId] For messages forwarded to the chat with the current user (Saved Messages),
  /// to the Replies bot chat, or to the channel's discussion group, the identifier of the original message from which the new message was forwarded last time;
  /// 0 if unknown
  int fromMessageId;

  /// [origin] Origin of a forwarded message
  MessageForwardOrigin origin;

  /// [publicServiceAnnouncementType] The type of a public service announcement for the forwarded message
  String publicServiceAnnouncementType;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "origin": origin.toJson(),
      "date": date,
      "public_service_announcement_type": publicServiceAnnouncementType,
      "from_chat_id": fromChatId,
      "from_message_id": fromMessageId,
    };
  }
}
