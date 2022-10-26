part of '../index.dart';

/// Describes a message
class Message extends TdObject {
  Message({
    required this.id,
    required this.sender,
    required this.chatId,
    this.sendingState,
    this.schedulingState,
    this.isOutgoing = false,
    this.isPinned = false,
    this.canBeEdited = false,
    this.canBeForwarded = false,
    this.canBeDeletedOnlyForSelf = false,
    this.canBeDeletedForAllUsers = false,
    this.canGetStatistics = false,
    this.canGetMessageThread = false,
    this.isChannelPost = false,
    required this.containsUnreadMention,
    required this.date,
    required this.editDate,
    this.forwardInfo,
    this.interactionInfo,
    this.replyInChatId = 0,
    this.replyToMessageId = 0,
    this.messageThreadId = 0,
    this.ttl = 0,
    required this.ttlExpiresIn,
    this.viaBotUserId = 0,
    required this.authorSignature,
    required this.mediaAlbumId,
    this.restrictionReason,
    required this.content,
    this.replyMarkup,
    this.extra,
  });

  /// Parse from a json
  factory Message.fromJson(Map<String, dynamic> json) => Message(
        id: json['id'],
        sender: MessageSender.fromJson(json['sender_id']),
        chatId: json['chat_id'],
        sendingState: json['sending_state'] != null
            ? MessageSendingState.fromJson(json['sending_state'])
            : null,
        schedulingState: json['scheduling_state'] != null
            ? MessageSchedulingState.fromJson(json['scheduling_state'])
            : null,
        isOutgoing: json['is_outgoing'],
        isPinned: json['is_pinned'],
        canBeEdited: json['can_be_edited'],
        canBeForwarded: json['can_be_forwarded'],
        canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
        canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
        canGetStatistics: json['can_get_statistics'],
        canGetMessageThread: json['can_get_message_thread'],
        isChannelPost: json['is_channel_post'],
        containsUnreadMention: json['contains_unread_mention'],
        date: json['date'],
        editDate: json['edit_date'],
        forwardInfo: json['forward_info'] != null
            ? MessageForwardInfo.fromJson(json['forward_info'])
            : null,
        interactionInfo: json['interaction_info'] != null
            ? MessageInteractionInfo.fromJson(json['interaction_info'])
            : null,
        replyInChatId: json['reply_in_chat_id'],
        replyToMessageId: json['reply_to_message_id'],
        messageThreadId: json['message_thread_id'],
        ttl: json['ttl'],
        ttlExpiresIn: json['ttl_expires_in'],
        viaBotUserId: json['via_bot_user_id'],
        authorSignature: json['author_signature'],
        mediaAlbumId: int.parse(json['media_album_id']),
        restrictionReason: json['restriction_reason'],
        content: MessageContent.fromJson(json['content']),
        replyMarkup: json['reply_markup'] != null
            ? ReplyMarkup.fromJson(json['reply_markup'])
            : null,
        extra: json['@extra'],
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'message';

  /// [authorSignature] For channel posts and anonymous group messages,
  /// optional author signature
  String authorSignature;

  /// [canBeDeletedForAllUsers] True, if the message can be deleted for all users
  bool canBeDeletedForAllUsers;

  /// [canBeDeletedOnlyForSelf] True, if the message can be deleted only for
  /// the current user while other users will continue to see it
  bool canBeDeletedOnlyForSelf;

  /// [canBeEdited] True, if the message can be edited.
  /// For live location and poll messages this fields shows whether
  /// editMessageLiveLocation or stopPoll can be used with this message by the application
  bool canBeEdited;

  /// [canBeForwarded] True, if the message can be forwarded
  bool canBeForwarded;

  /// [canGetMessageThread] True, if the message thread info is available
  bool canGetMessageThread;

  /// [canGetStatistics] True, if the message statistics are available
  bool canGetStatistics;

  /// [chatId] Chat identifier
  int chatId;

  /// [containsUnreadMention] True, if the message contains an unread mention for
  /// the current user
  bool containsUnreadMention;

  /// [content] Content of the message
  MessageContent content;

  /// [date] Point in time (Unix timestamp) when the message was sent
  int date;

  /// [editDate] Point in time (Unix timestamp) when the message was last edited
  int editDate;

  /// callback sign
  dynamic extra;

  /// [forwardInfo] Information about the initial message sender; may be null
  MessageForwardInfo? forwardInfo;

  /// [id] Message identifier; unique for the chat to which the message belongs
  int id;

  /// [interactionInfo] Information about interactions with the message; may be null
  MessageInteractionInfo? interactionInfo;

  /// [isChannelPost] True, if the message is a channel post.
  /// All messages to channels are channel posts, all other messages are not channel posts
  bool isChannelPost;

  /// [isOutgoing] True, if the message is outgoing
  bool isOutgoing;

  /// [isPinned] True, if the message is pinned
  bool isPinned;

  /// [mediaAlbumId] Unique identifier of an album this message belongs to.
  /// Only audios, documents, photos and videos can be grouped together in albums
  int mediaAlbumId;

  /// [messageThreadId] If non-zero, the identifier of the message thread the message
  /// belongs to; unique within the chat to which the message belongs
  int messageThreadId;

  /// [replyInChatId] If non-zero, the identifier of the chat to
  /// which the replied message belongs; Currently,
  /// only messages in the Replies chat can have different reply_in_chat_id and chat_id
  int replyInChatId;

  /// [replyMarkup] Reply markup for the message; may be null
  ReplyMarkup? replyMarkup;

  /// [replyToMessageId] If non-zero, the identifier of the message
  /// this message is replying to; can be the identifier of a deleted message
  int replyToMessageId;

  /// [restrictionReason] If non-empty, contains a human-readable
  /// description of the reason why access to this message must be restricted
  String? restrictionReason;

  /// [schedulingState] Information about the scheduling state of the message; may be null
  MessageSchedulingState? schedulingState;

  /// [sender] The sender of the message
  MessageSender sender;

  /// [sendingState] Information about the sending state of the message; may be null
  MessageSendingState? sendingState;

  /// [ttl] For self-destructing messages, the message's TTL (Time To Live),
  /// in seconds; 0 if none.
  /// TDLib will send updateDeleteMessages or updateMessageContent once the TTL expires
  int ttl;

  /// [ttlExpiresIn] Time left before the message expires, in seconds
  double ttlExpiresIn;

  /// [viaBotUserId] If non-zero, the user identifier of the bot through
  /// which this message was sent
  int viaBotUserId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "sender": sender.toJson(),
      "chat_id": chatId,
      "sending_state": sendingState?.toJson(),
      "scheduling_state": schedulingState?.toJson(),
      "is_outgoing": isOutgoing,
      "is_pinned": isPinned,
      "can_be_edited": canBeEdited,
      "can_be_forwarded": canBeForwarded,
      "can_be_deleted_only_for_self": canBeDeletedOnlyForSelf,
      "can_be_deleted_for_all_users": canBeDeletedForAllUsers,
      "can_get_statistics": canGetStatistics,
      "can_get_message_thread": canGetMessageThread,
      "is_channel_post": isChannelPost,
      "contains_unread_mention": containsUnreadMention,
      "date": date,
      "edit_date": editDate,
      "forward_info": forwardInfo?.toJson(),
      "interaction_info": interactionInfo?.toJson(),
      "reply_in_chat_id": replyInChatId,
      "reply_to_message_id": replyToMessageId,
      "message_thread_id": messageThreadId,
      "ttl": ttl,
      "ttl_expires_in": ttlExpiresIn,
      "via_bot_user_id": viaBotUserId,
      "author_signature": authorSignature,
      "media_album_id": mediaAlbumId,
      "restriction_reason": restrictionReason,
      "content": content.toJson(),
      "reply_markup": replyMarkup?.toJson(),
    };
  }
}
