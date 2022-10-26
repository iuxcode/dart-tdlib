// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Describes the type of a chat
/// a ChatType return type can be :
/// * ChatTypePrivate
/// * ChatTypeBasicGroup
/// * ChatTypeSupergroup
/// * ChatTypeSecret
class ChatType extends TdObject {
  ChatType();

  factory ChatType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatTypePrivate.CONSTRUCTOR:
        return ChatTypePrivate.fromJson(json);
      case ChatTypeBasicGroup.CONSTRUCTOR:
        return ChatTypeBasicGroup.fromJson(json);
      case ChatTypeSupergroup.CONSTRUCTOR:
        return ChatTypeSupergroup.fromJson(json);
      case ChatTypeSecret.CONSTRUCTOR:
        return ChatTypeSecret.fromJson(json);
      default:
        return ChatType();
    }
  }

  static const CONSTRUCTOR = 'chatType';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// An ordinary chat with a user
class ChatTypePrivate extends ChatType {
  ChatTypePrivate({required this.userId});

  /// Parse from a json
  factory ChatTypePrivate.fromJson(Map<String, dynamic> json) =>
      ChatTypePrivate(userId: json['user_id']);

  static const CONSTRUCTOR = 'chatTypePrivate';

  /// [userId] User identifier
  int userId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
    };
  }
}

/// A basic group (i.e., a chat with 0-200 other users)
class ChatTypeBasicGroup extends ChatType {
  ChatTypeBasicGroup({required this.basicGroupId});

  /// Parse from a json
  factory ChatTypeBasicGroup.fromJson(Map<String, dynamic> json) {
    return ChatTypeBasicGroup(basicGroupId: json['basic_group_id']);
  }

  static const CONSTRUCTOR = 'chatTypeBasicGroup';

  /// [basicGroupId] Basic group identifier
  int basicGroupId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": basicGroupId,
    };
  }
}

/// A supergroup (i.e. a chat with up to GetOption("supergroup_max_size") other users), or channel (with unlimited members)
class ChatTypeSupergroup extends ChatType {
  ChatTypeSupergroup({
    required this.supergroupId,
    this.isChannel = false,
  });

  /// Parse from a json
  factory ChatTypeSupergroup.fromJson(Map<String, dynamic> json) {
    return ChatTypeSupergroup(
      supergroupId: json['supergroup_id'],
      isChannel: json['is_channel'],
    );
  }

  static const CONSTRUCTOR = 'chatTypeSupergroup';

  /// [isChannel] True, if the supergroup is a channel
  bool isChannel;

  /// [supergroupId] Supergroup or channel identifier
  int supergroupId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "is_channel": isChannel,
    };
  }
}

/// A secret chat with a user
class ChatTypeSecret extends ChatType {
  ChatTypeSecret({required this.secretChatId, required this.userId});

  /// Parse from a json
  factory ChatTypeSecret.fromJson(Map<String, dynamic> json) {
    return ChatTypeSecret(
        secretChatId: json['secret_chat_id'], userId: json['user_id']);
  }

  static const CONSTRUCTOR = 'chatTypeSecret';

  /// [secretChatId] Secret chat identifier
  int secretChatId;

  /// [userId] User identifier of the secret chat peer
  int userId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat_id": secretChatId,
      "user_id": userId,
    };
  }
}
