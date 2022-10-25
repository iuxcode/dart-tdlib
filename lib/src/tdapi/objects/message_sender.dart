part of '../index.dart';

/// Contains information about the sender of a message
class MessageSender extends TdObject {
  MessageSender();

  /// a MessageSender return type can be :
  /// * MessageSenderUser
  /// * MessageSenderChat
  factory MessageSender.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSenderUser.CONSTRUCTOR:
        return MessageSenderUser.fromJson(json);
      case MessageSenderChat.CONSTRUCTOR:
        return MessageSenderChat.fromJson(json);
      default:
        return MessageSender();
    }
  }

  static const CONSTRUCTOR = 'messageSender';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// The message was sent by a known user
class MessageSenderUser extends MessageSender {
  MessageSenderUser({required this.userId});

  /// Parse from a json
  factory MessageSenderUser.fromJson(Map<String, dynamic> json) =>
      MessageSenderUser(userId: json['user_id']);

  static const CONSTRUCTOR = 'messageSenderUser';

  /// [userId] Identifier of the user that sent the message
  int userId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
    };
  }
}

/// The message was sent on behalf of a chat
class MessageSenderChat extends MessageSender {
  MessageSenderChat({required this.chatId});

  /// Parse from a json
  factory MessageSenderChat.fromJson(Map<String, dynamic> json) =>
      MessageSenderChat(chatId: json['chat_id']);

  static const CONSTRUCTOR = 'messageSenderChat';

  /// [chatId] Identifier of the chat that sent the message
  int chatId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
    };
  }
}
