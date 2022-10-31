// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Contains notifications about data changes
/// a Update return type can be :
/// * UpdateAuthorizationState
/// * UpdateNewMessage
/// * UpdateMessageSendAcknowledged
/// * UpdateMessageSendSucceeded
/// * UpdateMessageSendFailed
/// * UpdateMessageContent
/// * UpdateMessageEdited
/// * UpdateMessageIsPinned
/// * UpdateMessageInteractionInfo
/// * UpdateMessageContentOpened
/// * UpdateMessageMentionRead
/// * UpdateMessageLiveLocationViewed
/// * UpdateNewChat
/// * UpdateChatTitle
/// * UpdateChatPhoto
/// * UpdateChatPermissions
/// * UpdateChatLastMessage
/// * UpdateChatPosition
/// * UpdateChatIsMarkedAsUnread
/// * UpdateChatIsBlocked
/// * UpdateChatHasScheduledMessages
/// * UpdateChatVoiceChat
/// * UpdateChatDefaultDisableNotification
/// * UpdateChatReadInbox
/// * UpdateChatReadOutbox
/// * UpdateChatUnreadMentionCount
/// * UpdateChatNotificationSettings
/// * UpdateScopeNotificationSettings
/// * UpdateChatActionBar
/// * UpdateChatReplyMarkup
/// * UpdateChatDraftMessage
/// * UpdateChatFilters
/// * UpdateChatOnlineMemberCount
/// * UpdateNotification
/// * UpdateNotificationGroup
/// * UpdateActiveNotifications
/// * UpdateHavePendingNotifications
/// * UpdateDeleteMessages
/// * UpdateUserChatAction
/// * UpdateUserStatus
/// * UpdateUser
/// * UpdateBasicGroup
/// * UpdateSupergroup
/// * UpdateSecretChat
/// * UpdateUserFullInfo
/// * UpdateBasicGroupFullInfo
/// * UpdateSupergroupFullInfo
/// * UpdateServiceNotification
/// * UpdateFile
/// * UpdateFileGenerationStart
/// * UpdateFileGenerationStop
/// * UpdateCall
/// * UpdateGroupCall
/// * UpdateGroupCallParticipant
/// * UpdateNewCallSignalingData
/// * UpdateUserPrivacySettingRules
/// * UpdateUnreadMessageCount
/// * UpdateUnreadChatCount
/// * UpdateOption
/// * UpdateStickerSet
/// * UpdateInstalledStickerSets
/// * UpdateTrendingStickerSets
/// * UpdateRecentStickers
/// * UpdateFavoriteStickers
/// * UpdateSavedAnimations
/// * UpdateSelectedBackground
/// * UpdateLanguagePackStrings
/// * UpdateConnectionState
/// * UpdateTermsOfService
/// * UpdateUsersNearby
/// * UpdateDiceEmojis
/// * UpdateAnimationSearchParameters
/// * UpdateSuggestedActions
/// * UpdateNewInlineQuery
/// * UpdateNewChosenInlineResult
/// * UpdateNewCallbackQuery
/// * UpdateNewInlineCallbackQuery
/// * UpdateNewShippingQuery
/// * UpdateNewPreCheckoutQuery
/// * UpdateNewCustomEvent
/// * UpdateNewCustomQuery
/// * UpdatePoll
/// * UpdatePollAnswer
class Update extends TdObject {
  Update();

  factory Update.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UpdateAuthorizationState.CONSTRUCTOR:
        return UpdateAuthorizationState.fromJson(json);
      case UpdateNewMessage.CONSTRUCTOR:
        return UpdateNewMessage.fromJson(json);
      case UpdateMessageSendAcknowledged.CONSTRUCTOR:
        return UpdateMessageSendAcknowledged.fromJson(json);
      case UpdateMessageSendSucceeded.CONSTRUCTOR:
        return UpdateMessageSendSucceeded.fromJson(json);
      case UpdateMessageSendFailed.CONSTRUCTOR:
        return UpdateMessageSendFailed.fromJson(json);
      case UpdateMessageContent.CONSTRUCTOR:
        return UpdateMessageContent.fromJson(json);
      case UpdateMessageEdited.CONSTRUCTOR:
        return UpdateMessageEdited.fromJson(json);
      case UpdateMessageIsPinned.CONSTRUCTOR:
        return UpdateMessageIsPinned.fromJson(json);
      case UpdateMessageInteractionInfo.CONSTRUCTOR:
        return UpdateMessageInteractionInfo.fromJson(json);
      case UpdateMessageContentOpened.CONSTRUCTOR:
        return UpdateMessageContentOpened.fromJson(json);
      case UpdateMessageMentionRead.CONSTRUCTOR:
        return UpdateMessageMentionRead.fromJson(json);
      case UpdateMessageLiveLocationViewed.CONSTRUCTOR:
        return UpdateMessageLiveLocationViewed.fromJson(json);
      case UpdateNewChat.CONSTRUCTOR:
        return UpdateNewChat.fromJson(json);
      case UpdateChatTitle.CONSTRUCTOR:
        return UpdateChatTitle.fromJson(json);
      case UpdateChatPhoto.CONSTRUCTOR:
        return UpdateChatPhoto.fromJson(json);
      case UpdateChatPermissions.CONSTRUCTOR:
        return UpdateChatPermissions.fromJson(json);
      case UpdateChatLastMessage.CONSTRUCTOR:
        return UpdateChatLastMessage.fromJson(json);
      case UpdateChatPosition.CONSTRUCTOR:
        return UpdateChatPosition.fromJson(json);
      case UpdateChatIsMarkedAsUnread.CONSTRUCTOR:
        return UpdateChatIsMarkedAsUnread.fromJson(json);
      case UpdateChatIsBlocked.CONSTRUCTOR:
        return UpdateChatIsBlocked.fromJson(json);
      case UpdateChatHasScheduledMessages.CONSTRUCTOR:
        return UpdateChatHasScheduledMessages.fromJson(json);
      case UpdateChatVoiceChat.CONSTRUCTOR:
        return UpdateChatVoiceChat.fromJson(json);
      case UpdateChatDefaultDisableNotification.CONSTRUCTOR:
        return UpdateChatDefaultDisableNotification.fromJson(json);
      case UpdateChatReadInbox.CONSTRUCTOR:
        return UpdateChatReadInbox.fromJson(json);
      case UpdateChatReadOutbox.CONSTRUCTOR:
        return UpdateChatReadOutbox.fromJson(json);
      case UpdateChatUnreadMentionCount.CONSTRUCTOR:
        return UpdateChatUnreadMentionCount.fromJson(json);
      case UpdateChatNotificationSettings.CONSTRUCTOR:
        return UpdateChatNotificationSettings.fromJson(json);
      case UpdateScopeNotificationSettings.CONSTRUCTOR:
        return UpdateScopeNotificationSettings.fromJson(json);
      case UpdateChatActionBar.CONSTRUCTOR:
        return UpdateChatActionBar.fromJson(json);
      case UpdateChatReplyMarkup.CONSTRUCTOR:
        return UpdateChatReplyMarkup.fromJson(json);
      case UpdateChatDraftMessage.CONSTRUCTOR:
        return UpdateChatDraftMessage.fromJson(json);
      case UpdateChatFilters.CONSTRUCTOR:
        return UpdateChatFilters.fromJson(json);
      case UpdateChatOnlineMemberCount.CONSTRUCTOR:
        return UpdateChatOnlineMemberCount.fromJson(json);
      case UpdateNotification.CONSTRUCTOR:
        return UpdateNotification.fromJson(json);
      case UpdateNotificationGroup.CONSTRUCTOR:
        return UpdateNotificationGroup.fromJson(json);
      case UpdateActiveNotifications.CONSTRUCTOR:
        return UpdateActiveNotifications.fromJson(json);
      case UpdateHavePendingNotifications.CONSTRUCTOR:
        return UpdateHavePendingNotifications.fromJson(json);
      case UpdateDeleteMessages.CONSTRUCTOR:
        return UpdateDeleteMessages.fromJson(json);
      case UpdateUserChatAction.CONSTRUCTOR:
        return UpdateUserChatAction.fromJson(json);
      case UpdateUserStatus.CONSTRUCTOR:
        return UpdateUserStatus.fromJson(json);
      case UpdateUser.CONSTRUCTOR:
        return UpdateUser.fromJson(json);
      case UpdateBasicGroup.CONSTRUCTOR:
        return UpdateBasicGroup.fromJson(json);
      case UpdateSupergroup.CONSTRUCTOR:
        return UpdateSupergroup.fromJson(json);
      case UpdateSecretChat.CONSTRUCTOR:
        return UpdateSecretChat.fromJson(json);
      case UpdateUserFullInfo.CONSTRUCTOR:
        return UpdateUserFullInfo.fromJson(json);
      case UpdateBasicGroupFullInfo.CONSTRUCTOR:
        return UpdateBasicGroupFullInfo.fromJson(json);
      case UpdateSupergroupFullInfo.CONSTRUCTOR:
        return UpdateSupergroupFullInfo.fromJson(json);
      case UpdateServiceNotification.CONSTRUCTOR:
        return UpdateServiceNotification.fromJson(json);
      case UpdateFile.CONSTRUCTOR:
        return UpdateFile.fromJson(json);
      case UpdateFileGenerationStart.CONSTRUCTOR:
        return UpdateFileGenerationStart.fromJson(json);
      case UpdateFileGenerationStop.CONSTRUCTOR:
        return UpdateFileGenerationStop.fromJson(json);
      case UpdateCall.CONSTRUCTOR:
        return UpdateCall.fromJson(json);
      case UpdateGroupCall.CONSTRUCTOR:
        return UpdateGroupCall.fromJson(json);
      case UpdateGroupCallParticipant.CONSTRUCTOR:
        return UpdateGroupCallParticipant.fromJson(json);
      case UpdateNewCallSignalingData.CONSTRUCTOR:
        return UpdateNewCallSignalingData.fromJson(json);
      case UpdateUserPrivacySettingRules.CONSTRUCTOR:
        return UpdateUserPrivacySettingRules.fromJson(json);
      case UpdateUnreadMessageCount.CONSTRUCTOR:
        return UpdateUnreadMessageCount.fromJson(json);
      case UpdateUnreadChatCount.CONSTRUCTOR:
        return UpdateUnreadChatCount.fromJson(json);
      case UpdateOption.CONSTRUCTOR:
        return UpdateOption.fromJson(json);
      case UpdateStickerSet.CONSTRUCTOR:
        return UpdateStickerSet.fromJson(json);
      case UpdateInstalledStickerSets.CONSTRUCTOR:
        return UpdateInstalledStickerSets.fromJson(json);
      case UpdateTrendingStickerSets.CONSTRUCTOR:
        return UpdateTrendingStickerSets.fromJson(json);
      case UpdateRecentStickers.CONSTRUCTOR:
        return UpdateRecentStickers.fromJson(json);
      case UpdateFavoriteStickers.CONSTRUCTOR:
        return UpdateFavoriteStickers.fromJson(json);
      case UpdateSavedAnimations.CONSTRUCTOR:
        return UpdateSavedAnimations.fromJson(json);
      case UpdateSelectedBackground.CONSTRUCTOR:
        return UpdateSelectedBackground.fromJson(json);
      case UpdateLanguagePackStrings.CONSTRUCTOR:
        return UpdateLanguagePackStrings.fromJson(json);
      case UpdateConnectionState.CONSTRUCTOR:
        return UpdateConnectionState.fromJson(json);
      case UpdateTermsOfService.CONSTRUCTOR:
        return UpdateTermsOfService.fromJson(json);
      case UpdateUsersNearby.CONSTRUCTOR:
        return UpdateUsersNearby.fromJson(json);
      case UpdateDiceEmojis.CONSTRUCTOR:
        return UpdateDiceEmojis.fromJson(json);
      case UpdateAnimationSearchParameters.CONSTRUCTOR:
        return UpdateAnimationSearchParameters.fromJson(json);
      case UpdateSuggestedActions.CONSTRUCTOR:
        return UpdateSuggestedActions.fromJson(json);
      case UpdateNewInlineQuery.CONSTRUCTOR:
        return UpdateNewInlineQuery.fromJson(json);
      case UpdateNewChosenInlineResult.CONSTRUCTOR:
        return UpdateNewChosenInlineResult.fromJson(json);
      case UpdateNewCallbackQuery.CONSTRUCTOR:
        return UpdateNewCallbackQuery.fromJson(json);
      case UpdateNewInlineCallbackQuery.CONSTRUCTOR:
        return UpdateNewInlineCallbackQuery.fromJson(json);
      case UpdateNewShippingQuery.CONSTRUCTOR:
        return UpdateNewShippingQuery.fromJson(json);
      case UpdateNewPreCheckoutQuery.CONSTRUCTOR:
        return UpdateNewPreCheckoutQuery.fromJson(json);
      case UpdateNewCustomEvent.CONSTRUCTOR:
        return UpdateNewCustomEvent.fromJson(json);
      case UpdateNewCustomQuery.CONSTRUCTOR:
        return UpdateNewCustomQuery.fromJson(json);
      case UpdatePoll.CONSTRUCTOR:
        return UpdatePoll.fromJson(json);
      case UpdatePollAnswer.CONSTRUCTOR:
        return UpdatePollAnswer.fromJson(json);
      default:
        return Update();
    }
  }

  static const CONSTRUCTOR = 'update';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

class UpdateAuthorizationState extends Update {
  /// The user authorization state has changed
  UpdateAuthorizationState({
    required this.authorizationState,
    this.extra,
  });

  /// Parse from a json
  factory UpdateAuthorizationState.fromJson(Map<String, dynamic> json) =>
      UpdateAuthorizationState(
        authorizationState:
            AuthorizationState.fromJson(json['authorization_state']),
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'updateAuthorizationState';

  /// [authorizationState] New authorization state
  AuthorizationState authorizationState;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "authorization_state": authorizationState.toJson(),
      "extra": extra,
    };
  }
}

/// A new message was received; can also be an outgoing message
class UpdateNewMessage extends Update {
  UpdateNewMessage({
    required this.message,
    this.extra,
  });

  /// Parse from a json
  factory UpdateNewMessage.fromJson(Map<String, dynamic> json) =>
      UpdateNewMessage(
          message: Message.fromJson(json['message']), extra: json['@extra']);

  static const CONSTRUCTOR = 'updateNewMessage';

  /// callback sign
  dynamic extra;

  /// [message] The new message
  Message message;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "extra": extra,
    };
  }
}

/// A request to send a message has reached the Telegram server.
/// This doesn't mean that the message will be sent successfully or even that the send message request will be processed.
/// This update will be sent only if the option "use_quick_ack" is set to true.
/// This update may be sent multiple times for the same message
class UpdateMessageSendAcknowledged extends Update {
  UpdateMessageSendAcknowledged({
    required this.chatId,
    required this.messageId,
    this.extra,
  });

  /// Parse from a json
  factory UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json) =>
      UpdateMessageSendAcknowledged(
          chatId: json['chat_id'],
          messageId: json['message_id'],
          extra: json['@extra']);

  static const CONSTRUCTOR = 'updateMessageSendAcknowledged';

  /// [chatId] The chat identifier of the sent message
  int chatId;

  /// callback sign
  dynamic extra;

  /// [messageId] A temporary message identifier
  int messageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "extra": extra,
    };
  }
}

/// A message has been successfully sent

class UpdateMessageSendSucceeded extends Update {
  UpdateMessageSendSucceeded({
    required this.message,
    required this.oldMessageId,
    this.extra,
  });

  /// Parse from a json
  factory UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) =>
      UpdateMessageSendSucceeded(
        message: Message.fromJson(json['message']),
        oldMessageId: json['old_message_id'],
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'updateMessageSendSucceeded';

  /// callback sign
  dynamic extra;

  /// [message] Information about the sent message. Usually only the message identifier,
  /// date, and content are changed, but almost all other fields can also change
  Message message;

  /// [oldMessageId] The previous temporary message identifier
  int oldMessageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "old_message_id": oldMessageId,
      "extra": extra,
    };
  }
}

/// A message failed to send. Be aware that some messages being sent can be irrecoverably deleted,
/// in which case updateDeleteMessages will be received instead of this update
class UpdateMessageSendFailed extends Update {
  UpdateMessageSendFailed({
    required this.message,
    required this.oldMessageId,
    required this.errorCode,
    required this.errorMessage,
    this.extra,
  });

  /// Parse from a json
  factory UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) =>
      UpdateMessageSendFailed(
        message: Message.fromJson(json['message']),
        oldMessageId: json['old_message_id'],
        errorCode: json['error_code'],
        errorMessage: json['error_message'],
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'updateMessageSendFailed';

  /// [errorCode] An error code
  int errorCode;

  /// [errorMessage] Error message
  String errorMessage;

  /// callback sign
  dynamic extra;

  /// [message] Contains information about the message which failed to send
  Message message;

  /// [oldMessageId] The previous temporary message identifier
  int oldMessageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message": message.toJson(),
      "old_message_id": oldMessageId,
      "error_code": errorCode,
      "error_message": errorMessage,
    };
  }
}

/// The message content has changed
class UpdateMessageContent extends Update {
  UpdateMessageContent({
    required this.chatId,
    required this.messageId,
    required this.newContent,
    this.extra,
  });

  /// Parse from a json
  factory UpdateMessageContent.fromJson(Map<String, dynamic> json) {
    return UpdateMessageContent(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      newContent: MessageContent.fromJson(json['new_content']),
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateMessageContent';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [messageId] Message identifier
  int messageId;

  /// [newContent] New message content
  MessageContent newContent;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "new_content": newContent.toJson(),
    };
  }
}

/// A message was edited. Changes in the message content will come in a separate updateMessageContent
class UpdateMessageEdited extends Update {
  UpdateMessageEdited(
      {required this.chatId,
      required this.messageId,
      required this.editDate,
      required this.replyMarkup,
      this.extra});

  /// Parse from a json
  factory UpdateMessageEdited.fromJson(Map<String, dynamic> json) {
    return UpdateMessageEdited(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      editDate: json['edit_date'],
      replyMarkup: json['reply_markup'] != null
          ? ReplyMarkup.fromJson(json['reply_markup'])
          : null,
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateMessageEdited';

  /// [chatId] Chat identifier
  int chatId;

  /// [editDate] Point in time (Unix timestamp) when the message was edited
  int editDate;

  /// callback sign
  dynamic extra;

  /// [messageId] Message identifier
  int messageId;

  /// [replyMarkup] New message reply markup; may be null
  ReplyMarkup? replyMarkup;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "edit_date": editDate,
      "reply_markup": replyMarkup?.toJson(),
    };
  }
}

/// The message pinned state was changed
class UpdateMessageIsPinned extends Update {
  UpdateMessageIsPinned({
    required this.chatId,
    required this.messageId,
    this.isPinned = false,
    this.extra,
  });

  /// Parse from a json
  factory UpdateMessageIsPinned.fromJson(Map<String, dynamic> json) {
    return UpdateMessageIsPinned(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      isPinned: json['is_pinned'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateMessageIsPinned';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [isPinned] True, if the message is pinned
  bool isPinned;

  /// [messageId] The message identifier
  int messageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "is_pinned": isPinned,
    };
  }
}

/// The information about interactions with a message has changed
class UpdateMessageInteractionInfo extends Update {
  UpdateMessageInteractionInfo(
      {required this.chatId,
      required this.messageId,
      this.interactionInfo,
      this.extra});

  /// Parse from a json
  factory UpdateMessageInteractionInfo.fromJson(Map<String, dynamic> json) {
    return UpdateMessageInteractionInfo(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      interactionInfo: json['interaction_info'] != null
          ? MessageInteractionInfo.fromJson(json['interaction_info'])
          : null,
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateMessageInteractionInfo';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [interactionInfo] New information about interactions with the message; may be null
  MessageInteractionInfo? interactionInfo;

  /// [messageId] Message identifier
  int messageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "interaction_info": interactionInfo?.toJson(),
    };
  }
}

/// The message content was opened.
/// Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages
class UpdateMessageContentOpened extends Update {
  UpdateMessageContentOpened(
      {required this.chatId, required this.messageId, this.extra});

  /// Parse from a json
  factory UpdateMessageContentOpened.fromJson(Map<String, dynamic> json) {
    return UpdateMessageContentOpened(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateMessageContentOpened';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [messageId] Message identifier
  int messageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }
}

/// A message with an unread mention was read
class UpdateMessageMentionRead extends Update {
  UpdateMessageMentionRead({
    required this.chatId,
    required this.messageId,
    required this.unreadMentionCount,
    this.extra,
  });

  /// Parse from a json
  factory UpdateMessageMentionRead.fromJson(Map<String, dynamic> json) {
    return UpdateMessageMentionRead(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      unreadMentionCount: json['unread_mention_count'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateMessageMentionRead';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [messageId] Message identifier
  int messageId;

  /// [unreadMentionCount] The new number of unread mention messages left in the chat
  int unreadMentionCount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
      "unread_mention_count": unreadMentionCount,
      "extra": extra,
    };
  }
}

/// A message with a live location was viewed. When the update is received,
/// the application is supposed to update the live location
class UpdateMessageLiveLocationViewed extends Update {
  UpdateMessageLiveLocationViewed(
      {required this.chatId, required this.messageId, this.extra});

  /// Parse from a json
  factory UpdateMessageLiveLocationViewed.fromJson(Map<String, dynamic> json) {
    return UpdateMessageLiveLocationViewed(
      chatId: json['chat_id'],
      messageId: json['message_id'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateMessageLiveLocationViewed';

  /// [chatId] Identifier of the chat with the live location message
  int chatId;

  /// callback sign
  dynamic extra;

  /// [messageId] Identifier of the message with live location
  int messageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_id": messageId,
    };
  }
}

/// A new chat has been loaded/created.
/// This update is guaranteed to come before the chat identifier is returned to the application.
/// The chat field changes will be reported through separate updates
class UpdateNewChat extends Update {
  UpdateNewChat({required this.chat, this.extra});

  /// Parse from a json
  factory UpdateNewChat.fromJson(Map<String, dynamic> json) {
    return UpdateNewChat(
        chat: Chat.fromJson(json['chat']), extra: json['@extra']);
  }

  static const CONSTRUCTOR = 'updateNewChat';

  /// [chat] The chat
  Chat chat;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat": chat.toJson(),
    };
  }
}

/// The title of a chat was changed
class UpdateChatTitle extends Update {
  UpdateChatTitle({
    required this.chatId,
    required this.title,
    this.extra,
  });

  /// Parse from a json
  factory UpdateChatTitle.fromJson(Map<String, dynamic> json) {
    return UpdateChatTitle(
      chatId: json['chat_id'],
      title: json['title'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatTitle';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [title] The new chat title
  String title;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "title": title,
    };
  }
}

/// A chat photo was changed
class UpdateChatPhoto extends Update {
  UpdateChatPhoto({
    required this.chatId,
    this.photo,
    this.extra,
  });

  /// Parse from a json
  factory UpdateChatPhoto.fromJson(Map<String, dynamic> json) {
    return UpdateChatPhoto(
      chatId: json['chat_id'],
      photo: ChatPhotoInfo.fromJson(json['photo']),
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatPhoto';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [photo] The new chat photo; may be null
  ChatPhotoInfo? photo;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "photo": photo?.toJson(),
    };
  }
}

/// Chat permissions was changed
class UpdateChatPermissions extends Update {
  UpdateChatPermissions(
      {required this.chatId, required this.permissions, this.extra});

  /// Parse from a json
  factory UpdateChatPermissions.fromJson(Map<String, dynamic> json) {
    return UpdateChatPermissions(
      chatId: json['chat_id'],
      permissions: ChatPermissions.fromJson(json['permissions']),
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatPermissions';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [permissions] The new chat permissions
  ChatPermissions permissions;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "permissions": permissions.toJson(),
    };
  }
}

/// The last message of a chat was changed.
/// If last_message is null, then the last message in the chat became unknown.
/// Some new unknown messages might be added to the chat in this case
class UpdateChatLastMessage extends Update {
  UpdateChatLastMessage(
      {required this.chatId,
      this.lastMessage,
      required this.positions,
      this.extra});

  /// Parse from a json
  factory UpdateChatLastMessage.fromJson(Map<String, dynamic> json) {
    return UpdateChatLastMessage(
      chatId: json['chat_id'],
      lastMessage: json['last_message'] != null
          ? Message.fromJson(json['last_message'])
          : null,
      positions: List<ChatPosition>.from((json['positions'] ?? [])
          .map((item) => ChatPosition.fromJson(item))
          .toList()),
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatLastMessage';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [lastMessage] The new last message in the chat; may be null
  Message? lastMessage;

  /// [positions] The new chat positions in the chat lists
  List<ChatPosition> positions;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "last_message": lastMessage?.toJson(),
      "positions": positions.map((i) => i.toJson()).toList(),
    };
  }
}

/// The position of a chat in a chat list has changed. Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent
class UpdateChatPosition extends Update {
  UpdateChatPosition(
      {required this.chatId, required this.position, this.extra});

  /// Parse from a json
  factory UpdateChatPosition.fromJson(Map<String, dynamic> json) {
    return UpdateChatPosition(
      chatId: json['chat_id'],
      position: ChatPosition.fromJson(json['position']),
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatPosition';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [position] New chat position. If new order is 0, then the chat needs to be removed from the list
  ChatPosition position;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "position": position.toJson(),
    };
  }
}

class UpdateChatIsMarkedAsUnread extends Update {
  /// A chat was marked as unread or was read
  UpdateChatIsMarkedAsUnread({
    required this.chatId,
    this.isMarkedAsUnread = false,
    this.extra,
  });

  /// Parse from a json
  factory UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) {
    return UpdateChatIsMarkedAsUnread(
      chatId: json['chat_id'],
      isMarkedAsUnread: json['is_marked_as_unread'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatIsMarkedAsUnread';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [isMarkedAsUnread] New value of is_marked_as_unread
  bool isMarkedAsUnread;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_marked_as_unread": isMarkedAsUnread,
    };
  }
}

/// A chat was blocked or unblocked
class UpdateChatIsBlocked extends Update {
  UpdateChatIsBlocked(
      {required this.chatId, required this.isBlocked, this.extra});

  /// Parse from a json
  factory UpdateChatIsBlocked.fromJson(Map<String, dynamic> json) {
    return UpdateChatIsBlocked(
      chatId: json['chat_id'],
      isBlocked: json['is_blocked'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatIsBlocked';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [isBlocked] New value of is_blocked
  bool isBlocked;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "is_blocked": isBlocked,
    };
  }
}

/// A chat's has_scheduled_messages field has changed
class UpdateChatHasScheduledMessages extends Update {
  UpdateChatHasScheduledMessages({
    required this.chatId,
    this.hasScheduledMessages = false,
    this.extra,
  });

  /// Parse from a json
  factory UpdateChatHasScheduledMessages.fromJson(Map<String, dynamic> json) {
    return UpdateChatHasScheduledMessages(
      chatId: json['chat_id'],
      hasScheduledMessages: json['has_scheduled_messages'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatHasScheduledMessages';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [hasScheduledMessages] New value of has_scheduled_messages
  bool hasScheduledMessages;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "has_scheduled_messages": hasScheduledMessages,
    };
  }
}

/// A chat voice chat state has changed
class UpdateChatVoiceChat extends Update {
  UpdateChatVoiceChat(
      {required this.chatId,
      required this.voiceChatGroupCallId,
      this.isVoiceChatEmpty = false,
      this.extra});

  /// Parse from a json
  factory UpdateChatVoiceChat.fromJson(Map<String, dynamic> json) {
    return UpdateChatVoiceChat(
      chatId: json['chat_id'],
      voiceChatGroupCallId: json['voice_chat_group_call_id'],
      isVoiceChatEmpty: json['is_voice_chat_empty'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatVoiceChat';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [isVoiceChatEmpty] New value of is_voice_chat_empty
  bool isVoiceChatEmpty;

  /// [voiceChatGroupCallId] New value of voice_chat_group_call_id
  int voiceChatGroupCallId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "voice_chat_group_call_id": voiceChatGroupCallId,
      "is_voice_chat_empty": isVoiceChatEmpty,
    };
  }
}

/// The value of the default disable_notification parameter,
/// used when a message is sent to the chat, was changed
class UpdateChatDefaultDisableNotification extends Update {
  UpdateChatDefaultDisableNotification(
      {required this.chatId,
      this.defaultDisableNotification = false,
      this.extra});

  /// Parse from a json
  factory UpdateChatDefaultDisableNotification.fromJson(
      Map<String, dynamic> json) {
    return UpdateChatDefaultDisableNotification(
      chatId: json['chat_id'],
      defaultDisableNotification: json['default_disable_notification'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatDefaultDisableNotification';

  /// [chatId] Chat identifier
  int chatId;

  /// [defaultDisableNotification] The new default_disable_notification value
  bool defaultDisableNotification;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "default_disable_notification": defaultDisableNotification,
    };
  }
}

/// Incoming messages were read or number of unread messages has been changed
class UpdateChatReadInbox extends Update {
  UpdateChatReadInbox(
      {required this.chatId,
      required this.lastReadInboxMessageId,
      required this.unreadCount,
      this.extra});

  /// Parse from a json
  factory UpdateChatReadInbox.fromJson(Map<String, dynamic> json) {
    return UpdateChatReadInbox(
      chatId: json['chat_id'],
      lastReadInboxMessageId: json['last_read_inbox_message_id'],
      unreadCount: json['unread_count'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatReadInbox';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  int lastReadInboxMessageId;

  /// [unreadCount] The number of unread messages left in the chat
  int unreadCount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "last_read_inbox_message_id": lastReadInboxMessageId,
      "unread_count": unreadCount,
    };
  }
}

/// Outgoing messages were read
class UpdateChatReadOutbox extends Update {
  UpdateChatReadOutbox(
      {required this.chatId,
      required this.lastReadOutboxMessageId,
      this.extra});

  /// Parse from a json
  factory UpdateChatReadOutbox.fromJson(Map<String, dynamic> json) {
    return UpdateChatReadOutbox(
      chatId: json['chat_id'],
      lastReadOutboxMessageId: json['last_read_outbox_message_id'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatReadOutbox';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [lastReadOutboxMessageId] Identifier of last read outgoing message
  int lastReadOutboxMessageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "last_read_outbox_message_id": lastReadOutboxMessageId,
    };
  }
}

/// The chat unread_mention_count has changed
class UpdateChatUnreadMentionCount extends Update {
  UpdateChatUnreadMentionCount(
      {required this.chatId, required this.unreadMentionCount, this.extra});

  /// Parse from a json
  factory UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json) {
    return UpdateChatUnreadMentionCount(
        chatId: json['chat_id'],
        unreadMentionCount: json['unread_mention_count'],
        extra: json['@extra']);
  }

  static const CONSTRUCTOR = 'updateChatUnreadMentionCount';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [unreadMentionCount] The number of unread mention messages left in the chat
  int unreadMentionCount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "unread_mention_count": unreadMentionCount,
    };
  }
}

/// Notification settings for a chat were changed
class UpdateChatNotificationSettings extends Update {
  UpdateChatNotificationSettings(
      {required this.chatId, required this.notificationSettings, this.extra});

  /// Parse from a json
  factory UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    return UpdateChatNotificationSettings(
        chatId: json['chat_id'],
        notificationSettings:
            ChatNotificationSettings.fromJson(json['notification_settings']),
        extra: json['@extra']);
  }

  static const CONSTRUCTOR = 'updateChatNotificationSettings';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [notificationSettings] The new notification settings
  ChatNotificationSettings notificationSettings;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "notification_settings": notificationSettings.toJson(),
    };
  }
}

/// Notification settings for some type of chats were updated
class UpdateScopeNotificationSettings extends Update {
  UpdateScopeNotificationSettings({
    required this.scope,
    required this.notificationSettings,
    this.extra,
  });

  /// Parse from a json
  factory UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    return UpdateScopeNotificationSettings(
      scope: NotificationSettingsScope.fromJson(json['scope']),
      notificationSettings:
          ScopeNotificationSettings.fromJson(json['notification_settings']),
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateScopeNotificationSettings';

  /// callback sign
  dynamic extra;

  /// [notificationSettings] The new notification settings
  ScopeNotificationSettings notificationSettings;

  /// [scope] Types of chats for which notification settings were updated
  NotificationSettingsScope scope;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scope": scope.toJson(),
      "notification_settings": notificationSettings.toJson(),
    };
  }
}

/// The chat action bar was changed
class UpdateChatActionBar extends Update {
  UpdateChatActionBar(
      {required this.chatId, required this.actionBar, this.extra});

  /// Parse from a json
  factory UpdateChatActionBar.fromJson(Map<String, dynamic> json) {
    return UpdateChatActionBar(
      chatId: json['chat_id'],
      actionBar: ChatActionBar.fromJson(json['action_bar']),
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatActionBar';

  /// [actionBar] The new value of the action bar; may be null
  ChatActionBar actionBar;

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "action_bar": actionBar.toJson(),
    };
  }
}

/// The default chat reply markup was changed.
/// Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user
class UpdateChatReplyMarkup extends Update {
  UpdateChatReplyMarkup(
      {required this.chatId, this.replyMarkupMessageId = 0, this.extra});

  /// Parse from a json
  factory UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json) {
    return UpdateChatReplyMarkup(
      chatId: json['chat_id'],
      replyMarkupMessageId: json['reply_markup_message_id'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatReplyMarkup';

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup needs to be used;
  /// 0 if there is no default custom reply markup in the chat
  int replyMarkupMessageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "reply_markup_message_id": replyMarkupMessageId,
    };
  }
}

/// A chat draft has changed.
/// Be aware that the update may come in the currently opened chat but with old content of the draft.
/// If the user has changed the content of the draft, this update shouldn't be applied
class UpdateChatDraftMessage extends Update {
  UpdateChatDraftMessage(
      {required this.chatId,
      this.draftMessage,
      required this.positions,
      this.extra});

  /// Parse from a json
  factory UpdateChatDraftMessage.fromJson(Map<String, dynamic> json) {
    return UpdateChatDraftMessage(
      chatId: json['chat_id'],
      draftMessage: json['draft_message'] != null
          ? DraftMessage.fromJson(json['draft_message'])
          : null,
      positions: List<ChatPosition>.from((json['positions'] ?? [])
          .map((item) => ChatPosition.fromJson(item))
          .toList()),
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateChatDraftMessage';

  /// [chatId] Chat identifier
  int chatId;

  /// [draftMessage] The new draft message; may be null
  DraftMessage? draftMessage;

  /// callback sign
  dynamic extra;

  /// [positions] The new chat positions in the chat lists
  List<ChatPosition> positions;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "draft_message": draftMessage == null ? null : draftMessage!.toJson(),
      "positions": positions.map((i) => i.toJson()).toList(),
    };
  }
}

class UpdateChatFilters extends Update {
  /// The list of chat filters or a chat filter has changed
  UpdateChatFilters({this.chatFilters});

  /// Parse from a json
  UpdateChatFilters.fromJson(Map<String, dynamic> json) {
    chatFilters = List<ChatFilterInfo>.from((json['chat_filters'] ?? [])
        .map((item) => ChatFilterInfo.fromJson(item))
        .toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateChatFilters';

  /// [chatFilters] The new list of chat filters
  List<ChatFilterInfo>? chatFilters;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filters": chatFilters!.map((i) => i.toJson()).toList(),
    };
  }
}

class UpdateChatOnlineMemberCount extends Update {
  /// The number of online group members has changed. This update with non-zero count is sent only for currently opened chats. There is no guarantee that it will be sent just after the count has changed
  UpdateChatOnlineMemberCount({this.chatId, this.onlineMemberCount});

  /// Parse from a json
  UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json) {
    chatId = json['chat_id'];
    onlineMemberCount = json['online_member_count'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateChatOnlineMemberCount';

  /// [chatId] Identifier of the chat
  int? chatId;

  /// callback sign
  dynamic extra;

  /// [onlineMemberCount] New number of online members in the chat, or 0 if unknown
  int? onlineMemberCount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "online_member_count": onlineMemberCount,
    };
  }
}

class UpdateNotification extends Update {
  /// A notification was changed
  UpdateNotification({this.notificationGroupId, this.notification});

  /// Parse from a json
  UpdateNotification.fromJson(Map<String, dynamic> json) {
    notificationGroupId = json['notification_group_id'];
    notification = Notification.fromJson(json['notification']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNotification';

  /// callback sign
  dynamic extra;

  /// [notification] Changed notification
  Notification? notification;

  /// [notificationGroupId] Unique notification group identifier
  int? notificationGroupId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": notificationGroupId,
      "notification": notification == null ? null : notification!.toJson(),
    };
  }
}

class UpdateNotificationGroup extends Update {
  /// A list of active notifications in a notification group has changed
  UpdateNotificationGroup(
      {this.notificationGroupId,
      this.type,
      this.chatId,
      this.notificationSettingsChatId,
      this.isSilent,
      this.totalCount,
      this.addedNotifications,
      this.removedNotificationIds});

  /// Parse from a json
  UpdateNotificationGroup.fromJson(Map<String, dynamic> json) {
    notificationGroupId = json['notification_group_id'];
    type = NotificationGroupType.fromJson(json['type']);
    chatId = json['chat_id'];
    notificationSettingsChatId = json['notification_settings_chat_id'];
    isSilent = json['is_silent'];
    totalCount = json['total_count'];
    addedNotifications = List<Notification>.from(
        (json['added_notifications'] ?? [])
            .map((item) => Notification.fromJson(item))
            .toList());
    removedNotificationIds = List<int>.from(
        (json['removed_notification_ids'] ?? []).map((item) => item).toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNotificationGroup';

  /// [addedNotifications] List of added group notifications, sorted by notification updateNotificationGroup
  List<Notification>? addedNotifications;

  /// [chatId] Identifier of a chat to which all notifications in the group belong
  int? chatId;

  /// callback sign
  dynamic extra;

  /// [isSilent] True, if the notifications should be shown without sound
  bool? isSilent;

  /// [notificationGroupId] Unique notification group identifier
  int? notificationGroupId;

  /// [notificationSettingsChatId] Chat identifier, which notification settings must be applied to the added notifications
  int? notificationSettingsChatId;

  /// [removedNotificationIds] Identifiers of removed group notifications, sorted by notification updateNotificationGroup
  List<int>? removedNotificationIds;

  /// [totalCount] Total number of unread notifications in the group, can be bigger than number of active notifications
  int? totalCount;

  /// [type] New type of the notification group
  NotificationGroupType? type;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "notification_group_id": notificationGroupId,
      "type": type == null ? null : type!.toJson(),
      "chat_id": chatId,
      "notification_settings_chat_id": notificationSettingsChatId,
      "is_silent": isSilent,
      "total_count": totalCount,
      "added_notifications":
          addedNotifications!.map((i) => i.toJson()).toList(),
      "removed_notification_ids":
          removedNotificationIds!.map((i) => i).toList(),
    };
  }
}

class UpdateActiveNotifications extends Update {
  /// Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update
  UpdateActiveNotifications({this.groups});

  /// Parse from a json
  UpdateActiveNotifications.fromJson(Map<String, dynamic> json) {
    groups = List<NotificationGroup>.from((json['groups'] ?? [])
        .map((item) => NotificationGroup.fromJson(item))
        .toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateActiveNotifications';

  /// callback sign
  dynamic extra;

  /// [groups] Lists of active notification groups
  List<NotificationGroup>? groups;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "groups": groups!.map((i) => i.toJson()).toList(),
    };
  }
}

class UpdateHavePendingNotifications extends Update {
  /// Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications
  UpdateHavePendingNotifications(
      {this.haveDelayedNotifications, this.haveUnreceivedNotifications});

  /// Parse from a json
  UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json) {
    haveDelayedNotifications = json['have_delayed_notifications'];
    haveUnreceivedNotifications = json['have_unreceived_notifications'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateHavePendingNotifications';

  /// callback sign
  dynamic extra;

  /// [haveDelayedNotifications] True, if there are some delayed notification updates, which will be sent soon
  bool? haveDelayedNotifications;

  /// [haveUnreceivedNotifications] True, if there can be some yet unreceived notifications, which are being fetched from the server
  bool? haveUnreceivedNotifications;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "have_delayed_notifications": haveDelayedNotifications,
      "have_unreceived_notifications": haveUnreceivedNotifications,
    };
  }
}

class UpdateDeleteMessages extends Update {
  /// Some messages were deleted
  UpdateDeleteMessages(
      {this.chatId, this.messageIds, this.isPermanent, this.fromCache});

  /// Parse from a json
  UpdateDeleteMessages.fromJson(Map<String, dynamic> json) {
    chatId = json['chat_id'];
    messageIds = List<int>.from(
        (json['message_ids'] ?? []).map((item) => item).toList());
    isPermanent = json['is_permanent'];
    fromCache = json['from_cache'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateDeleteMessages';

  /// [chatId] Chat identifier
  int? chatId;

  /// callback sign
  dynamic extra;

  /// [fromCache] True, if the messages are deleted only from the cache and can possibly be retrieved again in the future
  bool? fromCache;

  /// [isPermanent] True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible)
  bool? isPermanent;

  /// [messageIds] Identifiers of the deleted messages
  List<int>? messageIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_ids": messageIds!.map((i) => i).toList(),
      "is_permanent": isPermanent,
      "from_cache": fromCache,
    };
  }
}

class UpdateUserChatAction extends Update {
  /// User activity in the chat has changed
  UpdateUserChatAction(
      {this.chatId, this.messageThreadId, this.userId, this.action});

  /// Parse from a json
  UpdateUserChatAction.fromJson(Map<String, dynamic> json) {
    chatId = json['chat_id'];
    messageThreadId = json['message_thread_id'];
    userId = json['user_id'];
    action = ChatAction.fromJson(json['action']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateUserChatAction';

  /// [action] The action description
  ChatAction? action;

  /// [chatId] Chat identifier
  int? chatId;

  /// callback sign
  dynamic extra;

  /// [messageThreadId] If not 0, a message thread identifier in which the action was performed
  int? messageThreadId;

  /// [userId] Identifier of a user performing an action
  int? userId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "user_id": userId,
      "action": action == null ? null : action!.toJson(),
    };
  }
}

/// The user went online or offline
class UpdateUserStatus extends Update {
  UpdateUserStatus({required this.userId, required this.status, this.extra});

  /// Parse from a json
  factory UpdateUserStatus.fromJson(Map<String, dynamic> json) {
    return UpdateUserStatus(
      userId: json['user_id'],
      status: UserStatus.fromJson(json['status']),
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateUserStatus';

  /// callback sign
  dynamic extra;

  /// [status] New status of the user
  UserStatus status;

  /// [userId] User identifier
  int userId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "status": status.toJson(),
    };
  }
}

class UpdateUser extends Update {
  /// Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application
  UpdateUser({this.user});

  /// Parse from a json
  UpdateUser.fromJson(Map<String, dynamic> json) {
    user = User.fromJson(json['user']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateUser';

  /// callback sign
  dynamic extra;

  /// [user] New data about the user
  User? user;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user": user == null ? null : user!.toJson(),
    };
  }
}

class UpdateBasicGroup extends Update {
  /// Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application
  UpdateBasicGroup({this.basicGroup});

  /// Parse from a json
  UpdateBasicGroup.fromJson(Map<String, dynamic> json) {
    basicGroup = BasicGroup.fromJson(json['basic_group']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateBasicGroup';

  /// [basicGroup] New data about the group
  BasicGroup? basicGroup;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group": basicGroup == null ? null : basicGroup!.toJson(),
    };
  }
}

class UpdateSupergroup extends Update {
  /// Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application
  UpdateSupergroup({this.supergroup});

  /// Parse from a json
  UpdateSupergroup.fromJson(Map<String, dynamic> json) {
    supergroup = Supergroup.fromJson(json['supergroup']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateSupergroup';

  /// callback sign
  dynamic extra;

  /// [supergroup] New data about the supergroup
  Supergroup? supergroup;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup": supergroup == null ? null : supergroup!.toJson(),
    };
  }
}

class UpdateSecretChat extends Update {
  /// Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application
  UpdateSecretChat({this.secretChat});

  /// Parse from a json
  UpdateSecretChat.fromJson(Map<String, dynamic> json) {
    secretChat = SecretChat.fromJson(json['secret_chat']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateSecretChat';

  /// callback sign
  dynamic extra;

  /// [secretChat] New data about the secret chat
  SecretChat? secretChat;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret_chat": secretChat == null ? null : secretChat!.toJson(),
    };
  }
}

class UpdateUserFullInfo extends Update {
  /// Some data from userFullInfo has been changed
  UpdateUserFullInfo({this.userId, this.userFullInfo});

  /// Parse from a json
  UpdateUserFullInfo.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userFullInfo = UserFullInfo.fromJson(json['user_full_info']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateUserFullInfo';

  /// callback sign
  dynamic extra;

  /// [userFullInfo] New full information about the user
  UserFullInfo? userFullInfo;

  /// [userId] User identifier
  int? userId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "user_full_info": userFullInfo == null ? null : userFullInfo!.toJson(),
    };
  }
}

class UpdateBasicGroupFullInfo extends Update {
  /// Some data from basicGroupFullInfo has been changed
  UpdateBasicGroupFullInfo({this.basicGroupId, this.basicGroupFullInfo});

  /// Parse from a json
  UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    basicGroupId = json['basic_group_id'];
    basicGroupFullInfo =
        BasicGroupFullInfo.fromJson(json['basic_group_full_info']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateBasicGroupFullInfo';

  /// [basicGroupFullInfo] New full information about the group
  BasicGroupFullInfo? basicGroupFullInfo;

  /// [basicGroupId] Identifier of a basic group
  int? basicGroupId;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": basicGroupId,
      "basic_group_full_info":
          basicGroupFullInfo == null ? null : basicGroupFullInfo!.toJson(),
    };
  }
}

class UpdateSupergroupFullInfo extends Update {
  /// Some data from supergroupFullInfo has been changed
  UpdateSupergroupFullInfo({this.supergroupId, this.supergroupFullInfo});

  /// Parse from a json
  UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    supergroupId = json['supergroup_id'];
    supergroupFullInfo =
        SupergroupFullInfo.fromJson(json['supergroup_full_info']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateSupergroupFullInfo';

  /// callback sign
  dynamic extra;

  /// [supergroupFullInfo] New full information about the supergroup
  SupergroupFullInfo? supergroupFullInfo;

  /// [supergroupId] Identifier of the supergroup or channel
  int? supergroupId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "supergroup_full_info":
          supergroupFullInfo == null ? null : supergroupFullInfo!.toJson(),
    };
  }
}

class UpdateServiceNotification extends Update {
  /// Service notification from the server. Upon receiving this the application must show a popup with the content of the notification
  UpdateServiceNotification({this.type, this.content});

  /// Parse from a json
  UpdateServiceNotification.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    content = MessageContent.fromJson(json['content']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateServiceNotification';

  /// [content] Notification content
  MessageContent? content;

  /// callback sign
  dynamic extra;

  /// [type] Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" should be shown under notification; if user presses the second, all local data should be destroyed using Destroy method
  String? type;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": type,
      "content": content == null ? null : content!.toJson(),
    };
  }
}

class UpdateFile extends Update {
  /// Information about a file was updated
  UpdateFile({this.file});

  /// Parse from a json
  UpdateFile.fromJson(Map<String, dynamic> json) {
    file = File.fromJson(json['file']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateFile';

  /// callback sign
  dynamic extra;

  /// [file] New data about the file
  File? file;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file": file == null ? null : file!.toJson(),
    };
  }
}

class UpdateFileGenerationStart extends Update {
  /// The file generation process needs to be started by the application
  UpdateFileGenerationStart(
      {this.generationId,
      this.originalPath,
      this.destinationPath,
      this.conversion});

  /// Parse from a json
  UpdateFileGenerationStart.fromJson(Map<String, dynamic> json) {
    generationId = int.tryParse(json['generation_id'] ?? "");
    originalPath = json['original_path'];
    destinationPath = json['destination_path'];
    conversion = json['conversion'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateFileGenerationStart';

  /// [conversion] String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which should be downloaded by the application
  String? conversion;

  /// [destinationPath] The path to a file that should be created and where the new file should be generated
  String? destinationPath;

  /// callback sign
  dynamic extra;

  /// [generationId] Unique identifier for the generation process
  int? generationId;

  /// [originalPath] The path to a file from which a new file is generated; may be empty
  String? originalPath;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": generationId,
      "original_path": originalPath,
      "destination_path": destinationPath,
      "conversion": conversion,
    };
  }
}

class UpdateFileGenerationStop extends Update {
  /// File generation is no longer needed
  UpdateFileGenerationStop({this.generationId});

  /// Parse from a json
  UpdateFileGenerationStop.fromJson(Map<String, dynamic> json) {
    generationId = int.tryParse(json['generation_id'] ?? "");
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateFileGenerationStop';

  /// callback sign
  dynamic extra;

  /// [generationId] Unique identifier for the generation process
  int? generationId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "generation_id": generationId,
    };
  }
}

/// New call was created or information about a call was updated
class UpdateCall extends Update {
  UpdateCall({required this.call});

  /// Parse from a json
  factory UpdateCall.fromJson(Map<String, dynamic> json) => UpdateCall(
        call: Call.fromJson(json['call']),
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'updateCall';

  /// [call] New data about a call
  Call call;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call": call == null ? null : call!.toJson(),
    };
  }
}

class UpdateGroupCall extends Update {
  /// Information about a group call was updated
  UpdateGroupCall({this.groupCall});

  /// Parse from a json
  UpdateGroupCall.fromJson(Map<String, dynamic> json) {
    groupCall = GroupCall.fromJson(json['group_call']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateGroupCall';

  /// callback sign
  dynamic extra;

  /// [groupCall] New data about a group call
  GroupCall? groupCall;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call": groupCall == null ? null : groupCall!.toJson(),
    };
  }
}

class UpdateGroupCallParticipant extends Update {
  /// Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined
  UpdateGroupCallParticipant({this.groupCallId, this.participant});

  /// Parse from a json
  UpdateGroupCallParticipant.fromJson(Map<String, dynamic> json) {
    groupCallId = json['group_call_id'];
    participant = GroupCallParticipant.fromJson(json['participant']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateGroupCallParticipant';

  /// callback sign
  dynamic extra;

  /// [groupCallId] Identifier of group call
  int? groupCallId;

  /// [participant] New data about a participant
  GroupCallParticipant? participant;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": groupCallId,
      "participant": participant == null ? null : participant!.toJson(),
    };
  }
}

class UpdateNewCallSignalingData extends Update {
  /// New call signaling data arrived
  UpdateNewCallSignalingData({this.callId, this.data});

  /// Parse from a json
  UpdateNewCallSignalingData.fromJson(Map<String, dynamic> json) {
    callId = json['call_id'];
    data = json['data'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNewCallSignalingData';

  /// [callId] The call identifier
  int? callId;

  /// [data] The data
  String? data;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": callId,
      "data": data,
    };
  }
}

class UpdateUserPrivacySettingRules extends Update {
  /// Some privacy setting rules have been changed
  UpdateUserPrivacySettingRules({this.setting, this.rules});

  /// Parse from a json
  UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    setting = UserPrivacySetting.fromJson(json['setting']);
    rules = UserPrivacySettingRules.fromJson(json['rules']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateUserPrivacySettingRules';

  /// callback sign
  dynamic extra;

  /// [rules] New privacy rules
  UserPrivacySettingRules? rules;

  /// [setting] The privacy setting
  UserPrivacySetting? setting;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "setting": setting == null ? null : setting!.toJson(),
      "rules": rules == null ? null : rules!.toJson(),
    };
  }
}

class UpdateUnreadMessageCount extends Update {
  /// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
  UpdateUnreadMessageCount(
      {this.chatList, this.unreadCount, this.unreadUnmutedCount});

  /// Parse from a json
  UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json) {
    chatList = ChatList.fromJson(json['chat_list']);
    unreadCount = json['unread_count'];
    unreadUnmutedCount = json['unread_unmuted_count'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateUnreadMessageCount';

  /// [chatList] The chat list with changed number of unread messages
  ChatList? chatList;

  /// callback sign
  dynamic extra;

  /// [unreadCount] Total number of unread messages
  int? unreadCount;

  /// [unreadUnmutedCount] Total number of unread messages in unmuted chats
  int? unreadUnmutedCount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": chatList == null ? null : chatList!.toJson(),
      "unread_count": unreadCount,
      "unread_unmuted_count": unreadUnmutedCount,
    };
  }
}

class UpdateUnreadChatCount extends Update {
  /// Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used
  UpdateUnreadChatCount(
      {this.chatList,
      this.totalCount,
      this.unreadCount,
      this.unreadUnmutedCount,
      this.markedAsUnreadCount,
      this.markedAsUnreadUnmutedCount});

  /// Parse from a json
  UpdateUnreadChatCount.fromJson(Map<String, dynamic> json) {
    chatList = ChatList.fromJson(json['chat_list']);
    totalCount = json['total_count'];
    unreadCount = json['unread_count'];
    unreadUnmutedCount = json['unread_unmuted_count'];
    markedAsUnreadCount = json['marked_as_unread_count'];
    markedAsUnreadUnmutedCount = json['marked_as_unread_unmuted_count'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateUnreadChatCount';

  /// [chatList] The chat list with changed number of unread messages
  ChatList? chatList;

  /// callback sign
  dynamic extra;

  /// [markedAsUnreadCount] Total number of chats marked as unread
  int? markedAsUnreadCount;

  /// [markedAsUnreadUnmutedCount] Total number of unmuted chats marked as unread
  int? markedAsUnreadUnmutedCount;

  /// [totalCount] Approximate total number of chats in the chat list
  int? totalCount;

  /// [unreadCount] Total number of unread chats
  int? unreadCount;

  /// [unreadUnmutedCount] Total number of unread unmuted chats
  int? unreadUnmutedCount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": chatList == null ? null : chatList!.toJson(),
      "total_count": totalCount,
      "unread_count": unreadCount,
      "unread_unmuted_count": unreadUnmutedCount,
      "marked_as_unread_count": markedAsUnreadCount,
      "marked_as_unread_unmuted_count": markedAsUnreadUnmutedCount,
    };
  }
}

class UpdateOption extends Update {
  /// An option changed its value
  UpdateOption({this.name, this.value});

  /// Parse from a json
  UpdateOption.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = OptionValue.fromJson(json['value']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateOption';

  /// callback sign
  dynamic extra;

  /// [name] The option name
  String? name;

  /// [value] The new option value
  OptionValue? value;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "value": value == null ? null : value!.toJson(),
    };
  }
}

class UpdateStickerSet extends Update {
  /// A sticker set has changed
  UpdateStickerSet({this.stickerSet});

  /// Parse from a json
  UpdateStickerSet.fromJson(Map<String, dynamic> json) {
    stickerSet = StickerSet.fromJson(json['sticker_set']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateStickerSet';

  /// callback sign
  dynamic extra;

  /// [stickerSet] The sticker set
  StickerSet? stickerSet;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set": stickerSet == null ? null : stickerSet!.toJson(),
    };
  }
}

class UpdateInstalledStickerSets extends Update {
  /// The list of installed sticker sets was updated
  UpdateInstalledStickerSets({this.isMasks, this.stickerSetIds});

  /// Parse from a json
  UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    isMasks = json['is_masks'];
    stickerSetIds = List<int>.from(
        (json['sticker_set_ids'] ?? []).map((item) => item).toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateInstalledStickerSets';

  /// callback sign
  dynamic extra;

  /// [isMasks] True, if the list of installed mask sticker sets was updated
  bool? isMasks;

  /// [stickerSetIds] The new list of installed ordinary sticker sets
  List<int>? stickerSetIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": isMasks,
      "sticker_set_ids": stickerSetIds!.map((i) => i).toList(),
    };
  }
}

class UpdateTrendingStickerSets extends Update {
  /// The list of trending sticker sets was updated or some of them were viewed
  UpdateTrendingStickerSets({this.stickerSets});

  /// Parse from a json
  UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json) {
    stickerSets = StickerSets.fromJson(json['sticker_sets']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateTrendingStickerSets';

  /// callback sign
  dynamic extra;

  /// [stickerSets] The prefix of the list of trending sticker sets with the newest trending sticker sets
  StickerSets? stickerSets;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_sets": stickerSets == null ? null : stickerSets!.toJson(),
    };
  }
}

class UpdateRecentStickers extends Update {
  /// The list of recently used stickers was updated
  UpdateRecentStickers({this.isAttached, this.stickerIds});

  /// Parse from a json
  UpdateRecentStickers.fromJson(Map<String, dynamic> json) {
    isAttached = json['is_attached'];
    stickerIds = List<int>.from(
        (json['sticker_ids'] ?? []).map((item) => item).toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateRecentStickers';

  /// callback sign
  dynamic extra;

  /// [isAttached] True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated
  bool? isAttached;

  /// [stickerIds] The new list of file identifiers of recently used stickers
  List<int>? stickerIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": isAttached,
      "sticker_ids": stickerIds!.map((i) => i).toList(),
    };
  }
}

class UpdateFavoriteStickers extends Update {
  /// The list of favorite stickers was updated
  UpdateFavoriteStickers({this.stickerIds});

  /// Parse from a json
  UpdateFavoriteStickers.fromJson(Map<String, dynamic> json) {
    stickerIds = List<int>.from(
        (json['sticker_ids'] ?? []).map((item) => item).toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateFavoriteStickers';

  /// callback sign
  dynamic extra;

  /// [stickerIds] The new list of file identifiers of favorite stickers
  List<int>? stickerIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_ids": stickerIds!.map((i) => i).toList(),
    };
  }
}

class UpdateSavedAnimations extends Update {
  /// The list of saved animations was updated
  UpdateSavedAnimations({this.animationIds});

  /// Parse from a json
  UpdateSavedAnimations.fromJson(Map<String, dynamic> json) {
    animationIds = List<int>.from(
        (json['animation_ids'] ?? []).map((item) => item).toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateSavedAnimations';

  /// [animationIds] The new list of file identifiers of saved animations
  List<int>? animationIds;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation_ids": animationIds!.map((i) => i).toList(),
    };
  }
}

class UpdateSelectedBackground extends Update {
  /// The selected background has changed
  UpdateSelectedBackground({
    this.forDarkTheme = false,
    this.background,
    this.extra,
  });

  /// Parse from a json
  factory UpdateSelectedBackground.fromJson(Map<String, dynamic> json) {
    return UpdateSelectedBackground(
      forDarkTheme: json['for_dark_theme'],
      background: json['background'] != null
          ? Background.fromJson(json['background'])
          : null,
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'updateSelectedBackground';

  /// [background] The new selected background; may be null
  Background? background;

  /// callback sign
  dynamic extra;

  /// [forDarkTheme] True, if background for dark theme has changed
  bool forDarkTheme;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "for_dark_theme": forDarkTheme,
      "background": background == null ? null : background!.toJson(),
    };
  }
}

class UpdateLanguagePackStrings extends Update {
  /// Some language pack strings have been updated
  UpdateLanguagePackStrings(
      {this.localizationTarget, this.languagePackId, this.strings});

  /// Parse from a json
  UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json) {
    localizationTarget = json['localization_target'];
    languagePackId = json['language_pack_id'];
    strings = List<LanguagePackString>.from((json['strings'] ?? [])
        .map((item) => LanguagePackString.fromJson(item))
        .toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateLanguagePackStrings';

  /// callback sign
  dynamic extra;

  /// [languagePackId] Identifier of the updated language pack
  String? languagePackId;

  /// [localizationTarget] Localization target to which the language pack belongs
  String? localizationTarget;

  /// [strings] List of changed language pack strings
  List<LanguagePackString>? strings;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "localization_target": localizationTarget,
      "language_pack_id": languagePackId,
      "strings": strings!.map((i) => i.toJson()).toList(),
    };
  }
}

class UpdateConnectionState extends Update {
  /// The connection state has changed. This update must be used only to show a human-readable description of the connection state
  UpdateConnectionState({this.state});

  /// Parse from a json
  UpdateConnectionState.fromJson(Map<String, dynamic> json) {
    state = ConnectionState.fromJson(json['state']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateConnectionState';

  /// callback sign
  dynamic extra;

  /// [state] The new connection state
  ConnectionState? state;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "state": state == null ? null : state!.toJson(),
    };
  }
}

class UpdateTermsOfService extends Update {
  /// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method should be called with the reason "Decline ToS update"
  UpdateTermsOfService({this.termsOfServiceId, this.termsOfService});

  /// Parse from a json
  UpdateTermsOfService.fromJson(Map<String, dynamic> json) {
    termsOfServiceId = json['terms_of_service_id'];
    termsOfService = TermsOfService.fromJson(json['terms_of_service']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateTermsOfService';

  /// callback sign
  dynamic extra;

  /// [termsOfService] The new terms of service
  TermsOfService? termsOfService;

  /// [termsOfServiceId] Identifier of the terms of service
  String? termsOfServiceId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service_id": termsOfServiceId,
      "terms_of_service":
          termsOfService == null ? null : termsOfService!.toJson(),
    };
  }
}

class UpdateUsersNearby extends Update {
  /// The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request
  UpdateUsersNearby({this.usersNearby});

  /// Parse from a json
  UpdateUsersNearby.fromJson(Map<String, dynamic> json) {
    usersNearby = List<ChatNearby>.from((json['users_nearby'] ?? [])
        .map((item) => ChatNearby.fromJson(item))
        .toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateUsersNearby';

  /// callback sign
  dynamic extra;

  /// [usersNearby] The new list of users nearby
  List<ChatNearby>? usersNearby;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "users_nearby": usersNearby!.map((i) => i.toJson()).toList(),
    };
  }
}

class UpdateDiceEmojis extends Update {
  /// The list of supported dice emojis has changed
  UpdateDiceEmojis({this.emojis});

  /// Parse from a json
  UpdateDiceEmojis.fromJson(Map<String, dynamic> json) {
    emojis =
        List<String>.from((json['emojis'] ?? []).map((item) => item).toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateDiceEmojis';

  /// [emojis] The new list of supported dice emojis
  List<String>? emojis;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emojis": emojis!.map((i) => i).toList(),
    };
  }
}

class UpdateAnimationSearchParameters extends Update {
  /// The parameters of animation search through GetOption("animation_search_bot_username") bot has changed
  UpdateAnimationSearchParameters({this.provider, this.emojis});

  /// Parse from a json
  UpdateAnimationSearchParameters.fromJson(Map<String, dynamic> json) {
    provider = json['provider'];
    emojis =
        List<String>.from((json['emojis'] ?? []).map((item) => item).toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateAnimationSearchParameters';

  /// [emojis] The new list of emojis suggested for searching
  List<String>? emojis;

  /// callback sign
  dynamic extra;

  /// [provider] Name of the animation search provider
  String? provider;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "provider": provider,
      "emojis": emojis!.map((i) => i).toList(),
    };
  }
}

class UpdateSuggestedActions extends Update {
  /// The list of suggested to the user actions has changed
  UpdateSuggestedActions({this.addedActions, this.removedActions});

  /// Parse from a json
  UpdateSuggestedActions.fromJson(Map<String, dynamic> json) {
    addedActions = List<SuggestedAction>.from((json['added_actions'] ?? [])
        .map((item) => SuggestedAction.fromJson(item))
        .toList());
    removedActions = List<SuggestedAction>.from((json['removed_actions'] ?? [])
        .map((item) => SuggestedAction.fromJson(item))
        .toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateSuggestedActions';

  /// [addedActions] Added suggested actions
  List<SuggestedAction>? addedActions;

  /// callback sign
  dynamic extra;

  /// [removedActions] Removed suggested actions
  List<SuggestedAction>? removedActions;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "added_actions": addedActions!.map((i) => i.toJson()).toList(),
      "removed_actions": removedActions!.map((i) => i.toJson()).toList(),
    };
  }
}

class UpdateNewInlineQuery extends Update {
  /// A new incoming inline query; for bots only
  UpdateNewInlineQuery(
      {this.id,
      this.senderUserId,
      this.userLocation,
      this.chatType,
      this.query,
      this.offset});

  /// Parse from a json
  UpdateNewInlineQuery.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json['id'] ?? "");
    senderUserId = json['sender_user_id'];
    userLocation = Location.fromJson(json['user_location']);
    chatType = ChatType.fromJson(json['chat_type']);
    query = json['query'];
    offset = json['offset'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNewInlineQuery';

  /// [chatType] Contains information about the type of the chat, from which the query originated; may be null if unknown
  ChatType? chatType;

  /// callback sign
  dynamic extra;

  /// [id] Unique query identifier
  int? id;

  /// [offset] Offset of the first entry to return
  String? offset;

  /// [query] Text of the query
  String? query;

  /// [senderUserId] Identifier of the user who sent the query
  int? senderUserId;

  /// [userLocation] User location; may be null
  Location? userLocation;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "user_location": userLocation == null ? null : userLocation!.toJson(),
      "chat_type": chatType == null ? null : chatType!.toJson(),
      "query": query,
      "offset": offset,
    };
  }
}

class UpdateNewChosenInlineResult extends Update {
  /// The user has chosen a result of an inline query; for bots only
  UpdateNewChosenInlineResult(
      {this.senderUserId,
      this.userLocation,
      this.query,
      this.resultId,
      this.inlineMessageId});

  /// Parse from a json
  UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json) {
    senderUserId = json['sender_user_id'];
    userLocation = Location.fromJson(json['user_location']);
    query = json['query'];
    resultId = json['result_id'];
    inlineMessageId = json['inline_message_id'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNewChosenInlineResult';

  /// callback sign
  dynamic extra;

  /// [inlineMessageId] Identifier of the sent inline message, if known
  String? inlineMessageId;

  /// [query] Text of the query
  String? query;

  /// [resultId] Identifier of the chosen result
  String? resultId;

  /// [senderUserId] Identifier of the user who sent the query
  int? senderUserId;

  /// [userLocation] User location; may be null
  Location? userLocation;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sender_user_id": senderUserId,
      "user_location": userLocation == null ? null : userLocation!.toJson(),
      "query": query,
      "result_id": resultId,
      "inline_message_id": inlineMessageId,
    };
  }
}

class UpdateNewCallbackQuery extends Update {
  /// A new incoming callback query; for bots only
  UpdateNewCallbackQuery(
      {this.id,
      this.senderUserId,
      this.chatId,
      this.messageId,
      this.chatInstance,
      this.payload});

  /// Parse from a json
  UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json['id'] ?? "");
    senderUserId = json['sender_user_id'];
    chatId = json['chat_id'];
    messageId = json['message_id'];
    chatInstance = int.tryParse(json['chat_instance'] ?? "");
    payload = CallbackQueryPayload.fromJson(json['payload']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNewCallbackQuery';

  /// [chatId] Identifier of the chat where the query was sent
  int? chatId;

  /// [chatInstance] Identifier that uniquely corresponds to the chat to which the message was sent
  int? chatInstance;

  /// callback sign
  dynamic extra;

  /// [id] Unique query identifier
  int? id;

  /// [messageId] Identifier of the message, from which the query originated
  int? messageId;

  /// [payload] Query payload
  CallbackQueryPayload? payload;

  /// [senderUserId] Identifier of the user who sent the query
  int? senderUserId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "chat_id": chatId,
      "message_id": messageId,
      "chat_instance": chatInstance,
      "payload": payload == null ? null : payload!.toJson(),
    };
  }
}

class UpdateNewInlineCallbackQuery extends Update {
  /// A new incoming callback query from a message sent via a bot; for bots only
  UpdateNewInlineCallbackQuery(
      {this.id,
      this.senderUserId,
      this.inlineMessageId,
      this.chatInstance,
      this.payload});

  /// Parse from a json
  UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json['id'] ?? "");
    senderUserId = json['sender_user_id'];
    inlineMessageId = json['inline_message_id'];
    chatInstance = int.tryParse(json['chat_instance'] ?? "");
    payload = CallbackQueryPayload.fromJson(json['payload']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNewInlineCallbackQuery';

  /// [chatInstance] An identifier uniquely corresponding to the chat a message was sent to
  int? chatInstance;

  /// callback sign
  dynamic extra;

  /// [id] Unique query identifier
  int? id;

  /// [inlineMessageId] Identifier of the inline message, from which the query originated
  String? inlineMessageId;

  /// [payload] Query payload
  CallbackQueryPayload? payload;

  /// [senderUserId] Identifier of the user who sent the query
  int? senderUserId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "inline_message_id": inlineMessageId,
      "chat_instance": chatInstance,
      "payload": payload == null ? null : payload!.toJson(),
    };
  }
}

class UpdateNewShippingQuery extends Update {
  /// A new incoming shipping query; for bots only. Only for invoices with flexible price
  UpdateNewShippingQuery(
      {this.id, this.senderUserId, this.invoicePayload, this.shippingAddress});

  /// Parse from a json
  UpdateNewShippingQuery.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json['id'] ?? "");
    senderUserId = json['sender_user_id'];
    invoicePayload = json['invoice_payload'];
    shippingAddress = Address.fromJson(json['shipping_address']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNewShippingQuery';

  /// callback sign
  dynamic extra;

  /// [id] Unique query identifier
  int? id;

  /// [invoicePayload] Invoice payload
  String? invoicePayload;

  /// [senderUserId] Identifier of the user who sent the query
  int? senderUserId;

  /// [shippingAddress] User shipping address
  Address? shippingAddress;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "invoice_payload": invoicePayload,
      "shipping_address":
          shippingAddress == null ? null : shippingAddress!.toJson(),
    };
  }
}

class UpdateNewPreCheckoutQuery extends Update {
  /// A new incoming pre-checkout query; for bots only. Contains full information about a checkout
  UpdateNewPreCheckoutQuery(
      {this.id,
      this.senderUserId,
      this.currency,
      this.totalAmount,
      this.invoicePayload,
      this.shippingOptionId,
      this.orderInfo});

  /// Parse from a json
  UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json['id'] ?? "");
    senderUserId = json['sender_user_id'];
    currency = json['currency'];
    totalAmount = json['total_amount'];
    invoicePayload = json['invoice_payload'];
    shippingOptionId = json['shipping_option_id'];
    orderInfo = OrderInfo.fromJson(json['order_info']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNewPreCheckoutQuery';

  /// [currency] Currency for the product price
  String? currency;

  /// callback sign
  dynamic extra;

  /// [id] Unique query identifier
  int? id;

  /// [invoicePayload] Invoice payload
  String? invoicePayload;

  /// [orderInfo] Information about the order; may be null
  OrderInfo? orderInfo;

  /// [senderUserId] Identifier of the user who sent the query
  int? senderUserId;

  /// [shippingOptionId] Identifier of a shipping option chosen by the user; may be empty if not applicable
  String? shippingOptionId;

  /// [totalAmount] Total price for the product, in the minimal quantity of the currency
  int? totalAmount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender_user_id": senderUserId,
      "currency": currency,
      "total_amount": totalAmount,
      "invoice_payload": invoicePayload,
      "shipping_option_id": shippingOptionId,
      "order_info": orderInfo == null ? null : orderInfo!.toJson(),
    };
  }
}

class UpdateNewCustomEvent extends Update {
  /// A new incoming event; for bots only
  UpdateNewCustomEvent({this.event});

  /// Parse from a json
  UpdateNewCustomEvent.fromJson(Map<String, dynamic> json) {
    event = json['event'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNewCustomEvent';

  /// [event] A JSON-serialized event
  String? event;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "event": event,
    };
  }
}

class UpdateNewCustomQuery extends Update {
  /// A new incoming query; for bots only
  UpdateNewCustomQuery({this.id, this.data, this.timeout});

  /// Parse from a json
  UpdateNewCustomQuery.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json['id'] ?? "");
    data = json['data'];
    timeout = json['timeout'];
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updateNewCustomQuery';

  /// [data] JSON-serialized query data
  String? data;

  /// callback sign
  dynamic extra;

  /// [id] The query identifier
  int? id;

  /// [timeout] Query timeout
  int? timeout;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "data": data,
      "timeout": timeout,
    };
  }
}

class UpdatePoll extends Update {
  /// A poll was updated; for bots only
  UpdatePoll({this.poll});

  /// Parse from a json
  UpdatePoll.fromJson(Map<String, dynamic> json) {
    poll = Poll.fromJson(json['poll']);
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updatePoll';

  /// callback sign
  dynamic extra;

  /// [poll] New data about the poll
  Poll? poll;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "poll": poll == null ? null : poll!.toJson(),
    };
  }
}

class UpdatePollAnswer extends Update {
  /// A user changed the answer to a poll; for bots only
  UpdatePollAnswer({this.pollId, this.userId, this.optionIds});

  /// Parse from a json
  UpdatePollAnswer.fromJson(Map<String, dynamic> json) {
    pollId = int.tryParse(json['poll_id'] ?? "");
    userId = json['user_id'];
    optionIds =
        List<int>.from((json['option_ids'] ?? []).map((item) => item).toList());
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'updatePollAnswer';

  /// callback sign
  dynamic extra;

  /// [optionIds] 0-based identifiers of answer options, chosen by the user
  List<int>? optionIds;

  /// [pollId] Unique poll identifier
  int? pollId;

  /// [userId] The user, who changed the answer to the poll
  int? userId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "poll_id": pollId,
      "user_id": userId,
      "option_ids": optionIds!.map((i) => i).toList(),
    };
  }
}
