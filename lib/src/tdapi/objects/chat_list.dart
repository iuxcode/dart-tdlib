part of '../index.dart';

/// Describes a list of chats
/// a ChatList return type can be :
/// * ChatListMain
/// * ChatListArchive
/// * ChatListFilter
class ChatList extends TdObject {
  ChatList();

  factory ChatList.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatListMain.CONSTRUCTOR:
        return ChatListMain.fromJson(json);
      case ChatListArchive.CONSTRUCTOR:
        return ChatListArchive.fromJson(json);
      case ChatListFilter.CONSTRUCTOR:
        return ChatListFilter.fromJson(json);
      default:
        return ChatList();
    }
  }

  static const CONSTRUCTOR = 'chatList';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A main list of chats
class ChatListMain extends ChatList {
  ChatListMain();

  /// Parse from a json
  ChatListMain.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'chatListMain';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A list of chats usually located at the top of the main chat list.
/// Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives
class ChatListArchive extends ChatList {
  ChatListArchive();

  /// Parse from a json
  ChatListArchive.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'chatListArchive';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A list of chats belonging to a chat filter
class ChatListFilter extends ChatList {
  ChatListFilter({required this.chatFilterId});

  /// Parse from a json
  factory ChatListFilter.fromJson(Map<String, dynamic> json) =>
      ChatListFilter(chatFilterId: json['chat_filter_id']);

  static const CONSTRUCTOR = 'chatListFilter';

  /// [chatFilterId] Chat filter identifier
  int chatFilterId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_id": chatFilterId,
    };
  }
}
