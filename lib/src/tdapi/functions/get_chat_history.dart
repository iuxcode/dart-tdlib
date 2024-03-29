part of '../index.dart';

class GetChatHistory extends TdFunction {
  /// Returns messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).. For optimal performance the number of returned messages is chosen by the library. This is an offline request if only_local is true
  GetChatHistory(
      {this.chatId,
      this.fromMessageId,
      this.offset,
      this.limit,
      this.onlyLocal});

  /// [chatId] Chat identifier
  int? chatId;

  /// [fromMessageId] Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
  int? fromMessageId;

  /// [offset] Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages
  int? offset;

  /// [limit] The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than or equal to -offset. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached
  int? limit;

  /// [onlyLocal] If true, returns only messages that are available locally without sending network requests
  bool? onlyLocal;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetChatHistory.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "from_message_id": this.fromMessageId,
      "offset": this.offset,
      "limit": this.limit,
      "only_local": this.onlyLocal,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
