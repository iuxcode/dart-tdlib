part of '../index.dart';

/// Contains the content of a message
class MessageContent extends TdObject {
  MessageContent();

  /// a MessageContent return type can be :
  /// * MessageAnimatedEmoji
  /// * MessageText
  /// * MessageAnimation
  /// * MessageAudio
  /// * MessageDocument
  /// * MessagePhoto
  /// * MessageExpiredPhoto
  /// * MessageSticker
  /// * MessageVideo
  /// * MessageExpiredVideo
  /// * MessageVideoNote
  /// * MessageVoiceNote
  /// * MessageLocation
  /// * MessageVenue
  /// * MessageContact
  /// * MessageDice
  /// * MessageGame
  /// * MessagePoll
  /// * MessageInvoice
  /// * MessageCall
  /// * MessageVoiceChatStarted
  /// * MessageVoiceChatEnded
  /// * MessageInviteVoiceChatParticipants
  /// * MessageBasicGroupChatCreate
  /// * MessageSupergroupChatCreate
  /// * MessageChatChangeTitle
  /// * MessageChatChangePhoto
  /// * MessageChatDeletePhoto
  /// * MessageChatAddMembers
  /// * MessageChatJoinByLink
  /// * MessageChatDeleteMember
  /// * MessageChatUpgradeTo
  /// * MessageChatUpgradeFrom
  /// * MessagePinMessage
  /// * MessageScreenshotTaken
  /// * MessageChatSetTtl
  /// * MessageCustomServiceAction
  /// * MessageGameScore
  /// * MessagePaymentSuccessful
  /// * MessagePaymentSuccessfulBot
  /// * MessageContactRegistered
  /// * MessageWebsiteConnected
  /// * MessagePassportDataSent
  /// * MessagePassportDataReceived
  /// * MessageProximityAlertTriggered
  /// * MessageUnsupported
  factory MessageContent.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageAnimatedEmoji.CONSTRUCTOR:
        return MessageAnimatedEmoji.fromJson(json);
      case MessageText.CONSTRUCTOR:
        return MessageText.fromJson(json);
      case MessageAnimation.CONSTRUCTOR:
        return MessageAnimation.fromJson(json);
      case MessageAudio.CONSTRUCTOR:
        return MessageAudio.fromJson(json);
      case MessageDocument.CONSTRUCTOR:
        return MessageDocument.fromJson(json);
      case MessagePhoto.CONSTRUCTOR:
        return MessagePhoto.fromJson(json);
      case MessageExpiredPhoto.CONSTRUCTOR:
        return MessageExpiredPhoto.fromJson(json);
      case MessageSticker.CONSTRUCTOR:
        return MessageSticker.fromJson(json);
      case MessageVideo.CONSTRUCTOR:
        return MessageVideo.fromJson(json);
      case MessageExpiredVideo.CONSTRUCTOR:
        return MessageExpiredVideo.fromJson(json);
      case MessageVideoNote.CONSTRUCTOR:
        return MessageVideoNote.fromJson(json);
      case MessageVoiceNote.CONSTRUCTOR:
        return MessageVoiceNote.fromJson(json);
      case MessageLocation.CONSTRUCTOR:
        return MessageLocation.fromJson(json);
      case MessageVenue.CONSTRUCTOR:
        return MessageVenue.fromJson(json);
      case MessageContact.CONSTRUCTOR:
        return MessageContact.fromJson(json);
      case MessageDice.CONSTRUCTOR:
        return MessageDice.fromJson(json);
      case MessageGame.CONSTRUCTOR:
        return MessageGame.fromJson(json);
      case MessagePoll.CONSTRUCTOR:
        return MessagePoll.fromJson(json);
      case MessageInvoice.CONSTRUCTOR:
        return MessageInvoice.fromJson(json);
      case MessageCall.CONSTRUCTOR:
        return MessageCall.fromJson(json);
      case MessageVoiceChatStarted.CONSTRUCTOR:
        return MessageVoiceChatStarted.fromJson(json);
      case MessageVoiceChatEnded.CONSTRUCTOR:
        return MessageVoiceChatEnded.fromJson(json);
      case MessageInviteVoiceChatParticipants.CONSTRUCTOR:
        return MessageInviteVoiceChatParticipants.fromJson(json);
      case MessageBasicGroupChatCreate.CONSTRUCTOR:
        return MessageBasicGroupChatCreate.fromJson(json);
      case MessageSupergroupChatCreate.CONSTRUCTOR:
        return MessageSupergroupChatCreate.fromJson(json);
      case MessageChatChangeTitle.CONSTRUCTOR:
        return MessageChatChangeTitle.fromJson(json);
      case MessageChatChangePhoto.CONSTRUCTOR:
        return MessageChatChangePhoto.fromJson(json);
      case MessageChatDeletePhoto.CONSTRUCTOR:
        return MessageChatDeletePhoto.fromJson(json);
      case MessageChatAddMembers.CONSTRUCTOR:
        return MessageChatAddMembers.fromJson(json);
      case MessageChatJoinByLink.CONSTRUCTOR:
        return MessageChatJoinByLink.fromJson(json);
      case MessageChatDeleteMember.CONSTRUCTOR:
        return MessageChatDeleteMember.fromJson(json);
      case MessageChatUpgradeTo.CONSTRUCTOR:
        return MessageChatUpgradeTo.fromJson(json);
      case MessageChatUpgradeFrom.CONSTRUCTOR:
        return MessageChatUpgradeFrom.fromJson(json);
      case MessagePinMessage.CONSTRUCTOR:
        return MessagePinMessage.fromJson(json);
      case MessageScreenshotTaken.CONSTRUCTOR:
        return MessageScreenshotTaken.fromJson(json);
      case MessageChatSetTtl.CONSTRUCTOR:
        return MessageChatSetTtl.fromJson(json);
      case MessageCustomServiceAction.CONSTRUCTOR:
        return MessageCustomServiceAction.fromJson(json);
      case MessageGameScore.CONSTRUCTOR:
        return MessageGameScore.fromJson(json);
      case MessagePaymentSuccessful.CONSTRUCTOR:
        return MessagePaymentSuccessful.fromJson(json);
      case MessagePaymentSuccessfulBot.CONSTRUCTOR:
        return MessagePaymentSuccessfulBot.fromJson(json);
      case MessageContactRegistered.CONSTRUCTOR:
        return MessageContactRegistered.fromJson(json);
      case MessageWebsiteConnected.CONSTRUCTOR:
        return MessageWebsiteConnected.fromJson(json);
      case MessagePassportDataSent.CONSTRUCTOR:
        return MessagePassportDataSent.fromJson(json);
      case MessagePassportDataReceived.CONSTRUCTOR:
        return MessagePassportDataReceived.fromJson(json);
      case MessageProximityAlertTriggered.CONSTRUCTOR:
        return MessageProximityAlertTriggered.fromJson(json);
      case MessageUnsupported.CONSTRUCTOR:
        return MessageUnsupported.fromJson(json);
      default:
        return MessageContent();
    }
  }

  static const CONSTRUCTOR = 'messageContent';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A message with an animated emoji
class MessageAnimatedEmoji extends MessageContent {
  MessageAnimatedEmoji({required this.emoji, required this.animatedEmoji});

  /// Parse from a json
  factory MessageAnimatedEmoji.fromJson(Map<String, dynamic> json) =>
      MessageAnimatedEmoji(
        emoji: json['text'],
        animatedEmoji: AnimatedEmoji.fromJson(json['animatedEmoji']),
      );

  static const CONSTRUCTOR = 'messageAnimatedEmoji';

  /// The animated emoji
  AnimatedEmoji animatedEmoji;

  /// The corresponding emoji
  String emoji;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emoji": this.emoji,
      "animatedEmoji": this.animatedEmoji.toJson(),
    };
  }
}

/// A text message
class MessageText extends MessageContent {
  MessageText({required this.text, this.webPage});

  /// Parse from a json
  factory MessageText.fromJson(Map<String, dynamic> json) => MessageText(
        text: FormattedText.fromJson(json['text']),
        webPage:
            json['web_page'] != null ? WebPage.fromJson(json['web_page']) : null,
      );

  static const CONSTRUCTOR = 'messageText';

  /// [text] Text of the message
  FormattedText text;

  /// [webPage] A preview of the web page that's mentioned in the text; may be null
  WebPage? webPage;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "web_page": this.webPage?.toJson(),
    };
  }
}

/// An animation message (GIF-style).
class MessageAnimation extends MessageContent {
  MessageAnimation({
    required this.animation,
    required this.caption,
    this.isSecret = false,
  });

  /// Parse from a json
  factory MessageAnimation.fromJson(Map<String, dynamic> json) => MessageAnimation(
        animation: Animation.fromJson(json['animation']),
        caption: FormattedText.fromJson(json['caption']),
        isSecret: json['is_secret'],
      );

  static const CONSTRUCTOR = 'messageAnimation';

  /// [animation] The animation description
  Animation animation;

  /// [caption] Animation caption
  FormattedText caption;

  /// [isSecret] True, if the animation thumbnail must be blurred and the animation must be shown only while tapped
  bool isSecret;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation.toJson(),
      "caption": this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }
}

/// An audio message
class MessageAudio extends MessageContent {
  MessageAudio({required this.audio, required this.caption});

  /// Parse from a json
  factory MessageAudio.fromJson(Map<String, dynamic> json) => MessageAudio(
        audio: Audio.fromJson(json['audio']),
        caption: FormattedText.fromJson(json['caption']),
      );

  static const CONSTRUCTOR = 'messageAudio';

  /// [audio] The audio description
  Audio audio;

  /// [caption] Audio caption
  FormattedText caption;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": this.audio.toJson(),
      "caption": this.caption.toJson(),
    };
  }
}

/// A document message (general file)
class MessageDocument extends MessageContent {
  MessageDocument({required this.document, required this.caption});

  /// Parse from a json
  factory MessageDocument.fromJson(Map<String, dynamic> json) => MessageDocument(
        document: Document.fromJson(json['document']),
        caption: FormattedText.fromJson(json['caption']),
      );

  static const CONSTRUCTOR = 'messageDocument';

  /// [caption] Document caption
  FormattedText caption;

  /// [document] The document description
  Document document;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document.toJson(),
      "caption": this.caption.toJson(),
    };
  }
}

/// A photo message
class MessagePhoto extends MessageContent {
  MessagePhoto({required this.photo, required this.caption, this.isSecret = false});

  /// Parse from a json
  factory MessagePhoto.fromJson(Map<String, dynamic> json) => MessagePhoto(
        photo: Photo.fromJson(json['photo']),
        caption: FormattedText.fromJson(json['caption']),
        isSecret: json['is_secret'],
      );

  static const CONSTRUCTOR = 'messagePhoto';

  /// [caption] Photo caption
  FormattedText caption;

  /// [isSecret] True, if the photo must be blurred and must be shown only while tapped
  bool isSecret;

  /// [photo] The photo description
  Photo photo;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
      "caption": this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }
}

/// An expired photo message (self-destructed after TTL has elapsed)
class MessageExpiredPhoto extends MessageContent {
  MessageExpiredPhoto();

  /// Parse from a json
  MessageExpiredPhoto.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'messageExpiredPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A sticker message
class MessageSticker extends MessageContent {
  MessageSticker({required this.sticker});

  /// Parse from a json
  factory MessageSticker.fromJson(Map<String, dynamic> json) => MessageSticker(
      sticker: Sticker.fromJson(json['sticker'] ?? <String, dynamic>{}));

  static const CONSTRUCTOR = 'messageSticker';

  /// [sticker] The sticker description
  Sticker sticker;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
    };
  }
}

/// A video message
class MessageVideo extends MessageContent {
  MessageVideo({required this.video, required this.caption, this.isSecret = false});

  /// Parse from a json
  factory MessageVideo.fromJson(Map<String, dynamic> json) => MessageVideo(
        video: Video.fromJson(json['video']),
        caption: FormattedText.fromJson(json['caption']),
        isSecret: json['is_secret'],
      );

  static const CONSTRUCTOR = 'messageVideo';

  /// [caption] Video caption
  FormattedText caption;

  /// [isSecret] True, if the video thumbnail must be blurred and the video must be shown only while tapped
  bool isSecret;

  /// [video] The video description
  Video video;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": this.video.toJson(),
      "caption": this.caption.toJson(),
      "is_secret": this.isSecret,
    };
  }
}

/// An expired video message (self-destructed after TTL has elapsed)
class MessageExpiredVideo extends MessageContent {
  MessageExpiredVideo();

  /// Parse from a json
  MessageExpiredVideo.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'messageExpiredVideo';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A video note message
class MessageVideoNote extends MessageContent {
  MessageVideoNote(
      {required this.videoNote, required this.isViewed, this.isSecret = false});

  /// Parse from a json
  factory MessageVideoNote.fromJson(Map<String, dynamic> json) => MessageVideoNote(
        videoNote: VideoNote.fromJson(json['video_note']),
        isViewed: json['is_viewed'],
        isSecret: json['is_secret'],
      );

  static const CONSTRUCTOR = 'messageVideoNote';

  /// [isSecret] True, if the video note thumbnail must be blurred and the video note must be shown only while tapped
  bool isSecret;

  /// [isViewed] True, if at least one of the recipients has viewed the video note
  bool isViewed;

  /// [videoNote] The video note description
  VideoNote videoNote;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video_note": this.videoNote.toJson(),
      "is_viewed": this.isViewed,
      "is_secret": this.isSecret,
    };
  }
}

/// A voice note message
class MessageVoiceNote extends MessageContent {
  MessageVoiceNote(
      {required this.voiceNote, required this.caption, this.isListened = false});

  /// Parse from a json
  factory MessageVoiceNote.fromJson(Map<String, dynamic> json) => MessageVoiceNote(
        voiceNote: VoiceNote.fromJson(json['voice_note']),
        caption: FormattedText.fromJson(json['caption']),
        isListened: json['is_listened'],
      );

  static const CONSTRUCTOR = 'messageVoiceNote';

  /// [caption] Voice note caption
  FormattedText caption;

  /// [isListened] True, if at least one of the recipients has listened to the voice note
  bool isListened;

  /// [voiceNote] The voice note description
  VoiceNote voiceNote;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": this.voiceNote.toJson(),
      "caption": this.caption.toJson(),
      "is_listened": this.isListened,
    };
  }
}

/// A message with a location
class MessageLocation extends MessageContent {
  MessageLocation({
    required this.location,
    required this.livePeriod,
    required this.expiresIn,
    this.heading = 0,
    this.proximityAlertRadius = 0,
  });

  /// Parse from a json
  factory MessageLocation.fromJson(Map<String, dynamic> json) => MessageLocation(
        location: Location.fromJson(json['location']),
        livePeriod: json['live_period'],
        expiresIn: json['expires_in'],
        heading: json['heading'],
        proximityAlertRadius: json['proximity_alert_radius'],
      );

  static const CONSTRUCTOR = 'messageLocation';

  /// [expiresIn] Left time for which the location can be updated, in seconds.
  /// updateMessageContent is not sent when this field changes
  int expiresIn;

  /// [heading] For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown
  int heading;

  /// [livePeriod] Time relative to the message send date, for which the location can be updated, in seconds
  int livePeriod;

  /// [location] The location description
  Location location;

  /// [proximityAlertRadius] For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000).
  /// 0 if the notification is disabled. Available only for the message sender
  int proximityAlertRadius;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "live_period": this.livePeriod,
      "expires_in": this.expiresIn,
      "heading": this.heading,
      "proximity_alert_radius": this.proximityAlertRadius,
    };
  }
}

/// A message with information about a venue
class MessageVenue extends MessageContent {
  MessageVenue({required this.venue});

  /// Parse from a json
  factory MessageVenue.fromJson(Map<String, dynamic> json) =>
      MessageVenue(venue: Venue.fromJson(json['venue']));

  static const CONSTRUCTOR = 'messageVenue';

  /// [venue] The venue description
  Venue venue;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "venue": this.venue.toJson(),
    };
  }
}

/// A message with a user contact
class MessageContact extends MessageContent {
  MessageContact({required this.contact});

  /// Parse from a json
  factory MessageContact.fromJson(Map<String, dynamic> json) =>
      MessageContact(contact: Contact.fromJson(json['contact']));

  static const CONSTRUCTOR = 'messageContact';

  /// [contact] The contact description
  Contact contact;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contact": this.contact.toJson(),
    };
  }
}

/// A dice message. The dice value is randomly generated by the server
class MessageDice extends MessageContent {
  MessageDice({
    this.initialState,
    required this.finalState,
    required this.emoji,
    this.value = 0,
    required this.successAnimationFrameNumber,
  });

  /// Parse from a json
  factory MessageDice.fromJson(Map<String, dynamic> json) => MessageDice(
        initialState: json['initial_state'] != null
            ? DiceStickers.fromJson(json['initial_state'])
            : null,
        finalState: DiceStickers.fromJson(json['final_state']),
        emoji: json['emoji'],
        value: json['value'],
        successAnimationFrameNumber: json['success_animation_frame_number'],
      );

  static const CONSTRUCTOR = 'messageDice';

  /// [emoji] Emoji on which the dice throw animation is based
  String emoji;

  /// [finalState] The animated stickers with the final dice animation; may be null if unknown.
  /// updateMessageContent will be sent when the sticker became known
  DiceStickers finalState;

  /// [initialState] The animated stickers with the initial dice animation;
  /// may be null if unknown. updateMessageContent will be sent when the sticker became known
  DiceStickers? initialState;

  /// [successAnimationFrameNumber] Number of frame after which a success animation like a shower of confetti needs
  /// to be shown on updateMessageSendSucceeded
  int successAnimationFrameNumber;

  /// [value] The dice value. If the value is 0, the dice don't have final state yet
  int value;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "initial_state": this.initialState?.toJson(),
      "final_state": this.finalState.toJson(),
      "emoji": this.emoji,
      "value": this.value,
      "success_animation_frame_number": this.successAnimationFrameNumber,
    };
  }
}

/// A message with a game
class MessageGame extends MessageContent {
  MessageGame({required this.game});

  factory MessageGame.fromJson(Map<String, dynamic> json) =>
      MessageGame(game: Game.fromJson(json['game']));

  static const CONSTRUCTOR = 'messageGame';

  /// [game] The game description
  Game game;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "game": this.game.toJson(),
    };
  }
}

/// A message with a poll
class MessagePoll extends MessageContent {
  MessagePoll({required this.poll});

  /// Parse from a json
  factory MessagePoll.fromJson(Map<String, dynamic> json) =>
      MessagePoll(poll: Poll.fromJson(json['poll']));

  static const CONSTRUCTOR = 'messagePoll';

  /// [poll] The poll description
  Poll poll;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "poll": this.poll.toJson(),
    };
  }
}

/// A message with an invoice from a bot
class MessageInvoice extends MessageContent {
  MessageInvoice({
    required this.title,
    required this.description,
    required this.photo,
    required this.currency,
    required this.totalAmount,
    required this.startParameter,
    this.isTest = false,
    this.needShippingAddress = false,
    required this.receiptMessageId,
  });

  /// Parse from a json
  factory MessageInvoice.fromJson(Map<String, dynamic> json) => MessageInvoice(
        title: json['title'],
        description: json['description'],
        photo: Photo.fromJson(json['photo'] ?? <String, dynamic>{}),
        currency: json['currency'],
        totalAmount: json['total_amount'],
        startParameter: json['start_parameter'],
        isTest: json['is_test'],
        needShippingAddress: json['need_shipping_address'],
        receiptMessageId: json['receipt_message_id'],
      );

  static const CONSTRUCTOR = 'messageInvoice';

  /// [currency] Currency for the product price
  String currency;

  /// [description] Product description
  String description;

  /// [isTest] True, if the invoice is a test invoice
  bool isTest;

  /// [needShippingAddress] True, if the shipping address should be specified
  bool needShippingAddress;

  /// [photo] Product photo; may be null
  Photo photo;

  /// [receiptMessageId] The identifier of the message with the receipt, after the product has been purchased
  int receiptMessageId;

  /// [startParameter] Unique invoice bot start_parameter. To share an invoice use the URL https://t.me/{bot_username}?start={start_parameter}
  String startParameter;

  /// [title] Product title
  String title;

  /// [totalAmount] Product total price in the minimal quantity of the currency
  int totalAmount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "description": this.description,
      "photo": this.photo.toJson(),
      "currency": this.currency,
      "total_amount": this.totalAmount,
      "start_parameter": this.startParameter,
      "is_test": this.isTest,
      "need_shipping_address": this.needShippingAddress,
      "receipt_message_id": this.receiptMessageId,
    };
  }
}

/// A message with information about an ended call
class MessageCall extends MessageContent {
  MessageCall(
      {required this.isVideo, required this.discardReason, required this.duration});

  /// Parse from a json
  factory MessageCall.fromJson(Map<String, dynamic> json) => MessageCall(
        isVideo: json['is_video'],
        discardReason: CallDiscardReason.fromJson(json['discard_reason']),
        duration: json['duration'],
      );

  static const CONSTRUCTOR = 'messageCall';

  /// [discardReason] Reason why the call was discarded
  CallDiscardReason discardReason;

  /// [duration] Call duration, in seconds
  int duration;

  /// [isVideo] True, if the call was a video call
  bool isVideo;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_video": this.isVideo,
      "discard_reason": this.discardReason.toJson(),
      "duration": this.duration,
    };
  }
}

/// A newly created voice chat
class MessageVoiceChatStarted extends MessageContent {
  MessageVoiceChatStarted({required this.groupCallId});

  /// Parse from a json
  factory MessageVoiceChatStarted.fromJson(Map<String, dynamic> json) =>
      MessageVoiceChatStarted(groupCallId: json['group_call_id']);

  static const CONSTRUCTOR = 'messageVoiceChatStarted';

  /// [groupCallId] Identifier of the voice chat. The voice chat can be received through the method getGroupCall
  int groupCallId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
    };
  }
}

/// A message with information about an ended voice chat
class MessageVoiceChatEnded extends MessageContent {
  MessageVoiceChatEnded({required this.duration});

  /// Parse from a json
  factory MessageVoiceChatEnded.fromJson(Map<String, dynamic> json) =>
      MessageVoiceChatEnded(duration: json['duration']);

  static const CONSTRUCTOR = 'messageVoiceChatEnded';

  /// [duration] Call duration
  int duration;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
    };
  }
}

/// A message with information about an invite to a voice chat
class MessageInviteVoiceChatParticipants extends MessageContent {
  MessageInviteVoiceChatParticipants(
      {required this.groupCallId, required this.userIds});

  /// Parse from a json
  factory MessageInviteVoiceChatParticipants.fromJson(Map<String, dynamic> json) =>
      MessageInviteVoiceChatParticipants(
          groupCallId: json['group_call_id'],
          userIds:
              List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()));

  static const CONSTRUCTOR = 'messageInviteVoiceChatParticipants';

  /// [groupCallId] Identifier of the voice chat.
  /// The voice chat can be received through the method getGroupCall
  int groupCallId;

  /// [userIds] Invited user identifiers
  List<int> userIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "group_call_id": this.groupCallId,
      "user_ids": this.userIds.map((i) => i).toList(),
    };
  }
}

/// A newly created basic group
class MessageBasicGroupChatCreate extends MessageContent {
  MessageBasicGroupChatCreate({required this.title, required this.memberUserIds});

  /// Parse from a json
  factory MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json) =>
      MessageBasicGroupChatCreate(
        title: json['title'],
        memberUserIds: List<int>.from(
            (json['member_user_ids'] ?? []).map((item) => item).toList()),
      );

  static const CONSTRUCTOR = 'messageBasicGroupChatCreate';

  /// [memberUserIds] User identifiers of members in the basic group
  List<int> memberUserIds;

  /// [title] Title of the basic group
  String title;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "member_user_ids": this.memberUserIds.map((i) => i).toList(),
    };
  }
}

/// A newly created supergroup or channel
class MessageSupergroupChatCreate extends MessageContent {
  MessageSupergroupChatCreate({required this.title});

  /// Parse from a json
  factory MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json) =>
      MessageSupergroupChatCreate(title: json['title']);

  static const CONSTRUCTOR = 'messageSupergroupChatCreate';

  /// [title] Title of the supergroup or channel
  String title;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
    };
  }
}

/// An updated chat title
class MessageChatChangeTitle extends MessageContent {
  MessageChatChangeTitle({required this.title});

  /// Parse from a json
  factory MessageChatChangeTitle.fromJson(Map<String, dynamic> json) =>
      MessageChatChangeTitle(title: json['title']);

  static const CONSTRUCTOR = 'messageChatChangeTitle';

  /// [title] New chat title
  String title;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
    };
  }
}

/// An updated chat photo
class MessageChatChangePhoto extends MessageContent {
  MessageChatChangePhoto({required this.photo});

  /// Parse from a json
  factory MessageChatChangePhoto.fromJson(Map<String, dynamic> json) =>
      MessageChatChangePhoto(photo: ChatPhoto.fromJson(json['photo']));

  static const CONSTRUCTOR = 'messageChatChangePhoto';

  /// [photo] New chat photo
  ChatPhoto photo;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo.toJson(),
    };
  }
}

/// A deleted chat photo
class MessageChatDeletePhoto extends MessageContent {
  MessageChatDeletePhoto();

  /// Parse from a json
  MessageChatDeletePhoto.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'messageChatDeletePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// New chat members were added
class MessageChatAddMembers extends MessageContent {
  MessageChatAddMembers({required this.memberUserIds});

  /// Parse from a json
  factory MessageChatAddMembers.fromJson(Map<String, dynamic> json) =>
      MessageChatAddMembers(
          memberUserIds: List<int>.from(
              (json['member_user_ids'] ?? []).map((item) => item).toList()));

  static const CONSTRUCTOR = 'messageChatAddMembers';

  /// [memberUserIds] User identifiers of the new members
  List<int> memberUserIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "member_user_ids": this.memberUserIds.map((i) => i).toList(),
    };
  }
}

class MessageChatJoinByLink extends MessageContent {
  /// A new member joined the chat by invite link
  MessageChatJoinByLink();

  /// Parse from a json
  MessageChatJoinByLink.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'messageChatJoinByLink';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A chat member was deleted
class MessageChatDeleteMember extends MessageContent {
  MessageChatDeleteMember({required this.userId});

  /// Parse from a json
  factory MessageChatDeleteMember.fromJson(Map<String, dynamic> json) =>
      MessageChatDeleteMember(userId: json['user_id']);

  static const CONSTRUCTOR = 'messageChatDeleteMember';

  /// [userId] User identifier of the deleted chat member
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

/// A basic group was upgraded to a supergroup and was deactivated as the result
class MessageChatUpgradeTo extends MessageContent {
  MessageChatUpgradeTo({required this.supergroupId});

  /// Parse from a json
  factory MessageChatUpgradeTo.fromJson(Map<String, dynamic> json) =>
      MessageChatUpgradeTo(supergroupId: json['supergroup_id']);

  static const CONSTRUCTOR = 'messageChatUpgradeTo';

  /// [supergroupId] Identifier of the supergroup to which the basic group was upgraded
  int supergroupId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
    };
  }
}

/// A supergroup has been created from a basic group
class MessageChatUpgradeFrom extends MessageContent {
  MessageChatUpgradeFrom({required this.title, required this.basicGroupId});

  /// Parse from a json
  factory MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json) =>
      MessageChatUpgradeFrom(
        title: json['title'],
        basicGroupId: json['basic_group_id'],
      );

  static const CONSTRUCTOR = 'messageChatUpgradeFrom';

  /// [basicGroupId] The identifier of the original basic group
  int basicGroupId;

  /// [title] Title of the newly created supergroup
  String title;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "basic_group_id": this.basicGroupId,
    };
  }
}

/// A message has been pinned
class MessagePinMessage extends MessageContent {
  MessagePinMessage({this.messageId = 0});

  /// Parse from a json
  factory MessagePinMessage.fromJson(Map<String, dynamic> json) =>
      MessagePinMessage(messageId: json['message_id']);

  static const CONSTRUCTOR = 'messagePinMessage';

  /// [messageId] Identifier of the pinned message, can be an identifier of a deleted message or 0
  int messageId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_id": this.messageId,
    };
  }
}

/// A screenshot of a message in the chat has been taken
class MessageScreenshotTaken extends MessageContent {
  MessageScreenshotTaken();

  /// Parse from a json
  MessageScreenshotTaken.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'messageScreenshotTaken';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The TTL (Time To Live) setting messages in a secret chat has been changed
class MessageChatSetTtl extends MessageContent {
  MessageChatSetTtl({required this.ttl});

  /// Parse from a json
  factory MessageChatSetTtl.fromJson(Map<String, dynamic> json) =>
      MessageChatSetTtl(ttl: json['ttl']);

  static const CONSTRUCTOR = 'messageChatSetTtl';

  /// [ttl] New TTL
  int ttl;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "ttl": this.ttl,
    };
  }
}

/// A non-standard action has happened in the chat
class MessageCustomServiceAction extends MessageContent {
  MessageCustomServiceAction({required this.text});

  /// Parse from a json
  factory MessageCustomServiceAction.fromJson(Map<String, dynamic> json) =>
      MessageCustomServiceAction(text: json['text']);

  static const CONSTRUCTOR = 'messageCustomServiceAction';

  /// [text] Message text to be shown in the chat
  String text;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
    };
  }
}

/// A new high score was achieved in a game
class MessageGameScore extends MessageContent {
  MessageGameScore({
    required this.gameMessageId,
    required this.gameId,
    required this.score,
  });

  /// Parse from a json
  factory MessageGameScore.fromJson(Map<String, dynamic> json) => MessageGameScore(
        gameMessageId: json['game_message_id'],
        gameId: int.parse(json['game_id']),
        score: json['score'],
      );

  static const CONSTRUCTOR = 'messageGameScore';

  /// [gameId] Identifier of the game; may be different from the games presented in the message with the game
  int gameId;

  /// [gameMessageId] Identifier of the message with the game, can be an identifier of a deleted message
  int gameMessageId;

  /// [score] New score
  int score;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "game_message_id": this.gameMessageId,
      "game_id": this.gameId,
      "score": this.score,
    };
  }
}

/// A payment has been completed
class MessagePaymentSuccessful extends MessageContent {
  MessagePaymentSuccessful({
    required this.invoiceMessageId,
    required this.currency,
    required this.totalAmount,
  });

  /// Parse from a json
  factory MessagePaymentSuccessful.fromJson(Map<String, dynamic> json) =>
      MessagePaymentSuccessful(
        invoiceMessageId: json['invoice_message_id'],
        currency: json['currency'],
        totalAmount: json['total_amount'],
      );

  static const CONSTRUCTOR = 'messagePaymentSuccessful';

  /// [currency] Currency for the price of the product
  String currency;

  /// [invoiceMessageId] Identifier of the message with the corresponding invoice;
  /// can be an identifier of a deleted message
  int invoiceMessageId;

  /// [totalAmount] Total price for the product, in the minimal quantity of the currency
  int totalAmount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice_message_id": this.invoiceMessageId,
      "currency": this.currency,
      "total_amount": this.totalAmount,
    };
  }
}

/// A payment has been completed; for bots only
class MessagePaymentSuccessfulBot extends MessageContent {
  MessagePaymentSuccessfulBot({
    required this.invoiceMessageId,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });

  /// Parse from a json
  factory MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json) =>
      MessagePaymentSuccessfulBot(
        invoiceMessageId: json['invoice_message_id'],
        currency: json['currency'],
        totalAmount: json['total_amount'],
        invoicePayload: json['invoice_payload'],
        shippingOptionId: json['shipping_option_id'],
        orderInfo: OrderInfo.fromJson(json['order_info'] ?? <String, dynamic>{}),
        telegramPaymentChargeId: json['telegram_payment_charge_id'],
        providerPaymentChargeId: json['provider_payment_charge_id'],
      );

  static const CONSTRUCTOR = 'messagePaymentSuccessfulBot';

  /// [currency] Currency for price of the product
  String currency;

  /// [invoiceMessageId] Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
  int invoiceMessageId;

  /// [invoicePayload] Invoice payload
  String invoicePayload;

  /// [orderInfo] Information about the order; may be null
  OrderInfo? orderInfo;

  /// [providerPaymentChargeId] Provider payment identifier
  String providerPaymentChargeId;

  /// [shippingOptionId] Identifier of the shipping option chosen by the user; may be empty if not applicable
  String? shippingOptionId;

  /// [telegramPaymentChargeId] Telegram payment identifier
  String telegramPaymentChargeId;

  /// [totalAmount] Total price for the product, in the minimal quantity of the currency
  int totalAmount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice_message_id": this.invoiceMessageId,
      "currency": this.currency,
      "total_amount": this.totalAmount,
      "invoice_payload": this.invoicePayload,
      "shipping_option_id": this.shippingOptionId,
      "order_info": this.orderInfo?.toJson(),
      "telegram_payment_charge_id": this.telegramPaymentChargeId,
      "provider_payment_charge_id": this.providerPaymentChargeId,
    };
  }
}

/// A contact has registered with Telegram
class MessageContactRegistered extends MessageContent {
  MessageContactRegistered();

  /// Parse from a json
  MessageContactRegistered.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'messageContactRegistered';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The current user has connected a website by logging in using Telegram Login Widget on it
class MessageWebsiteConnected extends MessageContent {
  MessageWebsiteConnected({required this.domainName});

  /// Parse from a json
  factory MessageWebsiteConnected.fromJson(Map<String, dynamic> json) =>
      MessageWebsiteConnected(domainName: json['domain_name']);

  static const CONSTRUCTOR = 'messageWebsiteConnected';

  /// [domainName] Domain name of the connected website
  String domainName;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "domain_name": this.domainName,
    };
  }
}

/// Telegram Passport data has been sent
class MessagePassportDataSent extends MessageContent {
  MessagePassportDataSent({required this.types});

  /// Parse from a json
  factory MessagePassportDataSent.fromJson(Map<String, dynamic> json) =>
      MessagePassportDataSent(
          types: List<PassportElementType>.from((json['types'] ?? [])));

  static const CONSTRUCTOR = 'messagePassportDataSent';

  /// [types] List of Telegram Passport element types sent
  List<PassportElementType> types;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "types": this.types.map((i) => i.toJson()).toList(),
    };
  }
}

/// Telegram Passport data has been received; for bots only
class MessagePassportDataReceived extends MessageContent {
  MessagePassportDataReceived({
    required this.elements,
    required this.credentials,
  });

  /// Parse from a json
  factory MessagePassportDataReceived.fromJson(Map<String, dynamic> json) =>
      MessagePassportDataReceived(
        elements: List<EncryptedPassportElement>.from((json['elements'] ?? [])
            .map((item) => EncryptedPassportElement.fromJson(item))
            .toList()),
        credentials: EncryptedCredentials.fromJson(json['credentials']),
      );

  static const CONSTRUCTOR = 'messagePassportDataReceived';

  /// [credentials] Encrypted data credentials
  EncryptedCredentials credentials;

  /// [elements] List of received Telegram Passport elements
  List<EncryptedPassportElement> elements;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "elements": this.elements.map((i) => i.toJson()).toList(),
      "credentials": this.credentials.toJson(),
    };
  }
}

/// A user in the chat came within proximity alert range
class MessageProximityAlertTriggered extends MessageContent {
  MessageProximityAlertTriggered({
    required this.traveler,
    required this.watcher,
    required this.distance,
  });

  /// Parse from a json
  factory MessageProximityAlertTriggered.fromJson(Map<String, dynamic> json) =>
      MessageProximityAlertTriggered(
        traveler: MessageSender.fromJson(json['traveler']),
        watcher: MessageSender.fromJson(json['watcher']),
        distance: json['distance'],
      );

  static const CONSTRUCTOR = 'messageProximityAlertTriggered';

  /// [distance] The distance between the users
  int distance;

  /// [traveler] The user or chat, which triggered the proximity alert
  MessageSender traveler;

  /// [watcher] The user or chat, which subscribed for the proximity alert
  MessageSender watcher;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "traveler": this.traveler.toJson(),
      "watcher": this.watcher.toJson(),
      "distance": this.distance,
    };
  }
}

/// Message content that is not supported in the current TDLib version
class MessageUnsupported extends MessageContent {
  MessageUnsupported();

  /// Parse from a json
  MessageUnsupported.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'messageUnsupported';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
