part of '../index.dart';

/// Describes a position of a chat in a chat list
class ChatPosition extends TdObject {
  ChatPosition({
    required this.list,
    required this.order,
    this.isPinned = false,
    this.source,
  });

  /// Parse from a json
  factory ChatPosition.fromJson(Map<String, dynamic> json) {
    return ChatPosition(
      list: ChatList.fromJson(json['list']),
      order: int.parse(json['order']),
      isPinned: json['is_pinned'],
      source:
          json['source'] != null ? ChatSource.fromJson(json['source']) : null,
    );
  }

  static const CONSTRUCTOR = 'chatPosition';

  /// [isPinned] True, if the chat is pinned in the chat list
  bool isPinned;

  /// [list] The chat list
  ChatList list;

  /// [order] A parameter used to determine order of the chat in the chat list. Chats must be sorted by the pair (order, chat.id) in descending order
  int order;

  /// [source] Source of the chat in the chat list; may be null
  ChatSource? source;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "list": list.toJson(),
      "order": order,
      "is_pinned": isPinned,
      "source": source?.toJson(),
    };
  }
}
