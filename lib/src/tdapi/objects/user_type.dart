// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Represents the type of a user.
/// The following types are possible: regular users, deleted users and bots
/// a UserType return type can be :
/// * UserTypeRegular
/// * UserTypeDeleted
/// * UserTypeBot
/// * UserTypeUnknown
class UserType extends TdObject {
  UserType();

  factory UserType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserTypeRegular.CONSTRUCTOR:
        return UserTypeRegular.fromJson(json);
      case UserTypeDeleted.CONSTRUCTOR:
        return UserTypeDeleted.fromJson(json);
      case UserTypeBot.CONSTRUCTOR:
        return UserTypeBot.fromJson(json);
      case UserTypeUnknown.CONSTRUCTOR:
        return UserTypeUnknown.fromJson(json);
      default:
        return UserType();
    }
  }

  static const CONSTRUCTOR = 'userType';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A regular user
class UserTypeRegular extends UserType {
  UserTypeRegular();

  /// Parse from a json
  UserTypeRegular.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userTypeRegular';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A deleted user or deleted bot.
/// No information on the user besides the user identifier is available.
/// It is not possible to perform any active actions on this type of user
class UserTypeDeleted extends UserType {
  UserTypeDeleted();

  /// Parse from a json
  UserTypeDeleted.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userTypeDeleted';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A bot (see https://core.telegram.org/bots)
class UserTypeBot extends UserType {
  UserTypeBot({
    this.canJoinGroups = false,
    this.canReadAllGroupMessages = false,
    this.isInline = false,
    required this.inlineQueryPlaceholder,
    this.needLocation = false,
  });

  /// Parse from a json
  factory UserTypeBot.fromJson(Map<String, dynamic> json) => UserTypeBot(
        canJoinGroups: json['can_join_groups'],
        canReadAllGroupMessages: json['can_read_all_group_messages'],
        isInline: json['is_inline'],
        inlineQueryPlaceholder: json['inline_query_placeholder'],
        needLocation: json['need_location'],
      );

  static const CONSTRUCTOR = 'userTypeBot';

  /// [canJoinGroups] True, if the bot can be invited to basic group and supergroup chats
  bool canJoinGroups;

  /// [canReadAllGroupMessages] True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages
  bool canReadAllGroupMessages;

  /// [inlineQueryPlaceholder] Placeholder for inline queries (displayed on the application input field)
  String inlineQueryPlaceholder;

  /// [isInline] True, if the bot supports inline queries
  bool isInline;

  /// [needLocation] True, if the location of the user should be sent with every inline query to this bot
  bool needLocation;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "can_join_groups": canJoinGroups,
      "can_read_all_group_messages": canReadAllGroupMessages,
      "is_inline": isInline,
      "inline_query_placeholder": inlineQueryPlaceholder,
      "need_location": needLocation,
    };
  }
}

/// No information on the user besides the user identifier is available,
/// yet this user has not been deleted.
/// This object is extremely rare and must be handled like a deleted user.
/// It is not possible to perform any actions on users of this type
class UserTypeUnknown extends UserType {
  UserTypeUnknown();

  /// Parse from a json
  UserTypeUnknown.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userTypeUnknown';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
