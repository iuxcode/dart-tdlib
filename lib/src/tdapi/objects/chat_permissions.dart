part of '../index.dart';

/// Describes actions that a user is allowed to take in a chat
class ChatPermissions extends TdObject {
  ChatPermissions({
    this.canSendMessages = false,
    this.canSendMediaMessages = false,
    this.canSendPolls = false,
    this.canSendOtherMessages = false,
    this.canAddWebPagePreviews = false,
    this.canChangeInfo = false,
    this.canInviteUsers = false,
    this.canPinMessages = false,
  });

  /// Parse from a json
  factory ChatPermissions.fromJson(Map<String, dynamic> json) {
    return ChatPermissions(
      canSendMessages: json['can_send_messages'],
      canSendMediaMessages: json['can_send_media_messages'],
      canSendPolls: json['can_send_polls'],
      canSendOtherMessages: json['can_send_other_messages'],
      canAddWebPagePreviews: json['can_add_web_page_previews'],
      canChangeInfo: json['can_change_info'],
      canInviteUsers: json['can_invite_users'],
      canPinMessages: json['can_pin_messages'],
    );
  }

  static const CONSTRUCTOR = 'chatPermissions';

  /// [canAddWebPagePreviews] True, if the user may add a web page preview to their messages. Implies can_send_messages permissions
  bool canAddWebPagePreviews;

  /// [canChangeInfo] True, if the user can change the chat title, photo, and other settings
  bool canChangeInfo;

  /// [canInviteUsers] True, if the user can invite new users to the chat
  bool canInviteUsers;

  /// [canPinMessages] True, if the user can pin messages
  bool canPinMessages;

  /// [canSendMediaMessages] True, if the user can send audio files, documents, photos, videos, video notes, and voice notes. Implies can_send_messages permissions
  bool canSendMediaMessages;

  /// [canSendMessages] True, if the user can send text messages, contacts, locations, and venues
  bool canSendMessages;

  /// [canSendOtherMessages] True, if the user can send animations, games, stickers, and dice and use inline bots. Implies can_send_messages permissions
  bool canSendOtherMessages;

  /// [canSendPolls] True, if the user can send polls. Implies can_send_messages permissions
  bool canSendPolls;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "can_send_messages": canSendMessages,
      "can_send_media_messages": canSendMediaMessages,
      "can_send_polls": canSendPolls,
      "can_send_other_messages": canSendOtherMessages,
      "can_add_web_page_previews": canAddWebPagePreviews,
      "can_change_info": canChangeInfo,
      "can_invite_users": canInviteUsers,
      "can_pin_messages": canPinMessages,
    };
  }
}
