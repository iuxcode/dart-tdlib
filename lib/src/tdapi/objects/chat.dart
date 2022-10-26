part of '../index.dart';

/// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
class Chat extends TdObject {
  Chat({
    required this.id,
    required this.type,
    required this.title,
    this.photo,
    required this.permissions,
    this.lastMessage,
    required this.positions,
    this.isMarkedAsUnread = false,
    this.isBlocked = false,
    this.hasScheduledMessages = false,
    this.canBeDeletedOnlyForSelf = false,
    this.canBeDeletedForAllUsers = false,
    this.canBeReported = false,
    this.defaultDisableNotification = false,
    required this.unreadCount,
    required this.lastReadInboxMessageId,
    required this.lastReadOutboxMessageId,
    required this.unreadMentionCount,
    required this.notificationSettings,
    this.actionBar,
    this.voiceChatGroupCallId = 0,
    this.isVoiceChatEmpty = false,
    this.replyMarkupMessageId = 0,
    this.draftMessage,
    required this.clientData,
    this.extra,
  });

  /// Parse from a json
  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      id: json['id'],
      type: ChatType.fromJson(json['type']),
      title: json['title'],
      photo:
          json['photo'] != null ? ChatPhotoInfo.fromJson(json['photo']) : null,
      permissions: ChatPermissions.fromJson(json['permissions']),
      lastMessage: json['last_message'] != null
          ? Message.fromJson(json['last_message'])
          : null,
      positions: List<ChatPosition>.from((json['positions'] ?? [])
          .map((item) => ChatPosition.fromJson(item))
          .toList()),
      isMarkedAsUnread: json['is_marked_as_unread'],
      isBlocked: json['is_blocked'],
      hasScheduledMessages: json['has_scheduled_messages'],
      canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
      canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
      canBeReported: json['can_be_reported'],
      defaultDisableNotification: json['default_disable_notification'],
      unreadCount: json['unread_count'],
      lastReadInboxMessageId: json['last_read_inbox_message_id'],
      lastReadOutboxMessageId: json['last_read_outbox_message_id'],
      unreadMentionCount: json['unread_mention_count'],
      notificationSettings:
          ChatNotificationSettings.fromJson(json['notification_settings']),
      actionBar: json['action_bar'] != null
          ? ChatActionBar.fromJson(json['action_bar'])
          : null,
      voiceChatGroupCallId: json['voice_chat_group_call_id'] ?? 0,
      isVoiceChatEmpty: json['is_voice_chat_empty'] ?? false,
      replyMarkupMessageId: json['reply_markup_message_id'],
      draftMessage: json['draft_message'] != null
          ? DraftMessage.fromJson(json['draft_message'])
          : null,
      clientData: json['client_data'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'chat';

  /// [actionBar] Describes actions which should be possible to do through a chat action bar; may be null
  ChatActionBar? actionBar;

  /// [canBeDeletedForAllUsers] True, if the chat messages can be deleted for all users
  bool canBeDeletedForAllUsers;

  /// [canBeDeletedOnlyForSelf] True, if the chat messages can be deleted only for the current user while other users will continue to see the messages
  bool canBeDeletedOnlyForSelf;

  /// [canBeReported] True, if the chat can be reported to Telegram moderators through reportChat
  bool canBeReported;

  /// [clientData] Contains application-specific data associated with the chat.
  /// (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used
  String clientData;

  /// [defaultDisableNotification] Default value of the disable_notification parameter, used when a message is sent to the chat
  bool defaultDisableNotification;

  /// [draftMessage] A draft of a message in the chat; may be null
  DraftMessage? draftMessage;

  /// callback sign
  dynamic extra;

  /// [hasScheduledMessages] True, if the chat has scheduled messages
  bool hasScheduledMessages;

  /// [id] Chat unique identifier
  int id;

  /// [isBlocked] True, if the chat is blocked by the current user and private messages from the chat can't be received
  bool isBlocked;

  /// [isMarkedAsUnread] True, if the chat is marked as unread
  bool isMarkedAsUnread;

  /// [isVoiceChatEmpty] True, if an active voice chat is empty
  bool isVoiceChatEmpty;

  /// [lastMessage] Last message in the chat; may be null
  Message? lastMessage;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  int lastReadOutboxMessageId;

  /// [notificationSettings] Notification settings for this chat
  ChatNotificationSettings notificationSettings;

  /// [permissions] Actions that non-administrator chat members are allowed to take in the chat
  ChatPermissions permissions;

  /// [photo] Chat photo; may be null
  ChatPhotoInfo? photo;

  /// [positions] Positions of the chat in chat lists
  List<ChatPosition> positions;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used;
  /// 0 if there is no default custom reply markup in the chat
  int replyMarkupMessageId;

  /// [title] Chat title
  String title;

  /// [type] Type of the chat
  ChatType type;

  /// [unreadCount] Number of unread messages in the chat
  int unreadCount;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the chat
  int unreadMentionCount;

  /// [voiceChatGroupCallId] Group call identifier of an active voice chat; 0 if none or unknown.
  /// The voice chat can be received through the method getGroupCall
  int voiceChatGroupCallId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "type": type.toJson(),
      "title": title,
      "photo": photo?.toJson(),
      "permissions": permissions.toJson(),
      "last_message": lastMessage?.toJson(),
      "positions": positions.map((i) => i.toJson()).toList(),
      "is_marked_as_unread": isMarkedAsUnread,
      "is_blocked": isBlocked,
      "has_scheduled_messages": hasScheduledMessages,
      "can_be_deleted_only_for_self": canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": canBeDeletedForAllUsers,
      "can_be_reported": canBeReported,
      "default_disable_notification": defaultDisableNotification,
      "unread_count": unreadCount,
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
      "unread_mention_count": unreadMentionCount,
      "notification_settings": notificationSettings.toJson(),
      "action_bar": actionBar?.toJson(),
      "voice_chat_group_call_id": voiceChatGroupCallId,
      "is_voice_chat_empty": isVoiceChatEmpty,
      "reply_markup_message_id": replyMarkupMessageId,
      "draft_message": draftMessage?.toJson(),
      "client_data": clientData,
    };
  }
}
