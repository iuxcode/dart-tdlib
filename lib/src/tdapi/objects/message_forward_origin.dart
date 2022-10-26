// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Contains information about the origin of a forwarded message
class MessageForwardOrigin extends TdObject {
  MessageForwardOrigin();

  /// a MessageForwardOrigin return type can be :
  /// * MessageForwardOriginUser
  /// * MessageForwardOriginChat
  /// * MessageForwardOriginHiddenUser
  /// * MessageForwardOriginChannel
  factory MessageForwardOrigin.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageForwardOriginUser.CONSTRUCTOR:
        return MessageForwardOriginUser.fromJson(json);
      case MessageForwardOriginChat.CONSTRUCTOR:
        return MessageForwardOriginChat.fromJson(json);
      case MessageForwardOriginHiddenUser.CONSTRUCTOR:
        return MessageForwardOriginHiddenUser.fromJson(json);
      case MessageForwardOriginChannel.CONSTRUCTOR:
        return MessageForwardOriginChannel.fromJson(json);
      default:
        return MessageForwardOrigin();
    }
  }

  static const CONSTRUCTOR = 'messageForwardOrigin';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// The message was originally sent by a known user
class MessageForwardOriginUser extends MessageForwardOrigin {
  MessageForwardOriginUser({required this.senderUserId});

  /// Parse from a json
  factory MessageForwardOriginUser.fromJson(Map<String, dynamic> json) =>
      MessageForwardOriginUser(senderUserId: json['sender_user_id']);

  static const CONSTRUCTOR = 'messageForwardOriginUser';

  /// [senderUserId] Identifier of the user that originally sent the message
  int senderUserId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sender_user_id": senderUserId,
    };
  }
}

/// The message was originally sent by an anonymous chat administrator on behalf of the chat
class MessageForwardOriginChat extends MessageForwardOrigin {
  MessageForwardOriginChat(
      {required this.senderChatId, required this.authorSignature});

  /// Parse from a json
  factory MessageForwardOriginChat.fromJson(Map<String, dynamic> json) =>
      MessageForwardOriginChat(
        senderChatId: json['sender_chat_id'],
        authorSignature: json['author_signature'],
      );

  static const CONSTRUCTOR = 'messageForwardOriginChat';

  /// [authorSignature] Original message author signature
  String authorSignature;

  /// [senderChatId] Identifier of the chat that originally sent the message
  int senderChatId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sender_chat_id": senderChatId,
      "author_signature": authorSignature,
    };
  }
}

/// The message was originally sent by a user, which is hidden by their privacy settings
class MessageForwardOriginHiddenUser extends MessageForwardOrigin {
  MessageForwardOriginHiddenUser({required this.senderName});

  /// Parse from a json
  factory MessageForwardOriginHiddenUser.fromJson(Map<String, dynamic> json) =>
      MessageForwardOriginHiddenUser(senderName: json['sender_name']);

  static const CONSTRUCTOR = 'messageForwardOriginHiddenUser';

  /// [senderName] Name of the sender
  String senderName;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sender_name": senderName,
    };
  }
}

/// The message was originally a post in a channel
class MessageForwardOriginChannel extends MessageForwardOrigin {
  MessageForwardOriginChannel(
      {required this.chatId,
      required this.messageId,
      required this.authorSignature});

  /// Parse from a json
  factory MessageForwardOriginChannel.fromJson(Map<String, dynamic> json) =>
      MessageForwardOriginChannel(
        chatId: json['chat_id'],
        messageId: json['message_id'],
        authorSignature: json['author_signature'],
      );

  static const CONSTRUCTOR = 'messageForwardOriginChannel';

  /// [authorSignature] Original post author signature
  String authorSignature;

  /// [chatId] Identifier of the chat from which the message was originally forwarded
  int chatId;

  /// [messageId] Message identifier of the original message
  int messageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "author_signature": authorSignature,
    };
  }
}
