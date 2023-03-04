part of '../index.dart';

/// Contains information about a message draft
class DraftMessage extends TdObject {
  DraftMessage(
      {this.replyToMessageId = 0,
      required this.date,
      required this.inputMessageText});

  /// Parse from a json
  factory DraftMessage.fromJson(Map<String, dynamic> json) {
    return DraftMessage(
        replyToMessageId: json['reply_to_message_id'],
        date: json['date'],
        inputMessageText:
            InputMessageContent.fromJson(json['input_message_text']));
  }

  static const CONSTRUCTOR = 'draftMessage';

  /// [date] Point in time (Unix timestamp) when the draft was created
  int date;

  /// [inputMessageText] Content of the message draft; this should always be of type inputMessageText
  InputMessageContent inputMessageText;

  /// [replyToMessageId] Identifier of the message to reply to; 0 if none
  int replyToMessageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reply_to_message_id": replyToMessageId,
      "date": date,
      "input_message_text": inputMessageText.toJson(),
    };
  }
}
