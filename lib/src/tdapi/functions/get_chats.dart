part of '../index.dart';

/// Returns an ordered list of chats in a chat list.
/// Chats are sorted by the pair (chat.position.order, chat.id) in descending order.
/// (For example, to get a list of chats from the beginning, the offset_order should be equal to a biggest signed 64-bit number 9223372036854775807 == 2.
/// For optimal performance the number of returned chats is chosen by the library
class GetChats extends TdFunction {
  GetChats({
    required this.chatList,
    required this.offsetOrder,
    required this.offsetChatId,
    required this.limit,
  });

  static const CONSTRUCTOR = 'getChats';

  /// [chatList] The chat list in which to return chats
  ChatList chatList;

  /// callback sign
  dynamic extra;

  /// [limit] The maximum number of chats to be returned.
  /// It is possible that fewer chats than the limit are returned even if the end of the list is not reached
  int limit;

  /// [offsetChatId] Chat identifier to return chats from
  int offsetChatId;

  /// [offsetOrder] Chat order to return chats from
  int offsetOrder;

  @override
  String getConstructor() => CONSTRUCTOR;

  /// Parse from a json
  // GetChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList.toJson(),
      "offset_order": this.offsetOrder,
      "offset_chat_id": this.offsetChatId,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }
}
