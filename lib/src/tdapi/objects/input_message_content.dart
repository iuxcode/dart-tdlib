part of '../index.dart';

class InputMessageContent extends TdObject {
  /// The content of a message to send
  InputMessageContent();

  /// a InputMessageContent return type can be :
  /// * InputMessageText
  /// * InputMessageAnimation
  /// * InputMessageAudio
  /// * InputMessageDocument
  /// * InputMessagePhoto
  /// * InputMessageSticker
  /// * InputMessageVideo
  /// * InputMessageVideoNote
  /// * InputMessageVoiceNote
  /// * InputMessageLocation
  /// * InputMessageVenue
  /// * InputMessageContact
  /// * InputMessageDice
  /// * InputMessageGame
  /// * InputMessageInvoice
  /// * InputMessagePoll
  /// * InputMessageForwarded
  factory InputMessageContent.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputMessageText.CONSTRUCTOR:
        return InputMessageText.fromJson(json);
      case InputMessageAnimation.CONSTRUCTOR:
        return InputMessageAnimation.fromJson(json);
      case InputMessageAudio.CONSTRUCTOR:
        return InputMessageAudio.fromJson(json);
      case InputMessageDocument.CONSTRUCTOR:
        return InputMessageDocument.fromJson(json);
      case InputMessagePhoto.CONSTRUCTOR:
        return InputMessagePhoto.fromJson(json);
      case InputMessageSticker.CONSTRUCTOR:
        return InputMessageSticker.fromJson(json);
      case InputMessageVideo.CONSTRUCTOR:
        return InputMessageVideo.fromJson(json);
      case InputMessageVideoNote.CONSTRUCTOR:
        return InputMessageVideoNote.fromJson(json);
      case InputMessageVoiceNote.CONSTRUCTOR:
        return InputMessageVoiceNote.fromJson(json);
      case InputMessageLocation.CONSTRUCTOR:
        return InputMessageLocation.fromJson(json);
      case InputMessageVenue.CONSTRUCTOR:
        return InputMessageVenue.fromJson(json);
      case InputMessageContact.CONSTRUCTOR:
        return InputMessageContact.fromJson(json);
      case InputMessageDice.CONSTRUCTOR:
        return InputMessageDice.fromJson(json);
      case InputMessageGame.CONSTRUCTOR:
        return InputMessageGame.fromJson(json);
      case InputMessageInvoice.CONSTRUCTOR:
        return InputMessageInvoice.fromJson(json);
      case InputMessagePoll.CONSTRUCTOR:
        return InputMessagePoll.fromJson(json);
      case InputMessageForwarded.CONSTRUCTOR:
        return InputMessageForwarded.fromJson(json);
      default:
        return InputMessageContent();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inputMessageContent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

/// A text message
class InputMessageText extends InputMessageContent {
  InputMessageText(
      {required this.text,
      this.disableWebPagePreview = true,
      this.clearDraft = true});

  /// [text] Formatted text to be sent; 1-GetOption("message_text_length_max") characters.
  /// Only Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually
  FormattedText text;

  /// [disableWebPagePreview] True, if rich web page previews for URLs in the message text should be disabled
  bool disableWebPagePreview;

  /// [clearDraft] True, if a chat message draft should be deleted
  bool clearDraft;

  /// Parse from a json
  factory InputMessageText.fromJson(Map<String, dynamic> json) {
    return InputMessageText(
      text: FormattedText.fromJson(json['text']),
      disableWebPagePreview: json['disable_web_page_preview'],
      clearDraft: json['clear_draft'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "disable_web_page_preview": disableWebPagePreview,
      "clear_draft": clearDraft,
    };
  }

  static const CONSTRUCTOR = 'inputMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

/// An animation message (GIF-style).
class InputMessageAnimation extends InputMessageContent {
  InputMessageAnimation(
      {required this.animation,
      this.thumbnail,
      this.addedStickerFileIds,
      required this.duration,
      required this.width,
      required this.height,
      this.caption});

  /// [animation] Animation file to be sent
  InputFile animation;

  /// [thumbnail] Animation thumbnail, if available
  InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the animation, if applicable
  List<int>? addedStickerFileIds;

  /// [duration] Duration of the animation, in seconds
  int duration;

  /// [width] Width of the animation; may be replaced by the server
  int width;

  /// [height] Height of the animation; may be replaced by the server
  int height;

  /// [caption] Animation caption; 0-GetOption("message_caption_length_max") characters
  FormattedText? caption;

  /// Parse from a json
  factory InputMessageAnimation.fromJson(Map<String, dynamic> json) {
    return InputMessageAnimation(
      animation: InputFile.fromJson(json['animation']),
      thumbnail: InputThumbnail.fromJson(json['thumbnail']),
      addedStickerFileIds: List<int>.from(
          (json['added_sticker_file_ids'] ?? []).map((item) => item).toList()),
      duration: json['duration'],
      width: json['width'],
      height: json['height'],
      caption: FormattedText.fromJson(json['caption']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": animation.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds?.map((i) => i).toList(),
      "duration": duration,
      "width": width,
      "height": height,
      "caption": caption?.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

/// An audio message
class InputMessageAudio extends InputMessageContent {
  InputMessageAudio(
      {required this.audio,
      this.albumCoverThumbnail,
      required this.duration,
      required this.title,
      required this.performer,
      this.caption});

  /// [audio] Audio file to be sent
  InputFile audio;

  /// [albumCoverThumbnail] Thumbnail of the cover for the album, if available
  InputThumbnail? albumCoverThumbnail;

  /// [duration] Duration of the audio, in seconds; may be replaced by the server
  int duration;

  /// [title] Title of the audio; 0-64 characters; may be replaced by the server
  String title;

  /// [performer] Performer of the audio; 0-64 characters, may be replaced by the server
  String performer;

  /// [caption] Audio caption; 0-GetOption("message_caption_length_max") characters
  FormattedText? caption;

  /// Parse from a json
  factory InputMessageAudio.fromJson(Map<String, dynamic> json) {
    return InputMessageAudio(
      audio: InputFile.fromJson(json['audio']),
      albumCoverThumbnail:
          InputThumbnail.fromJson(json['album_cover_thumbnail']),
      duration: json['duration'],
      title: json['title'],
      performer: json['performer'],
      caption: FormattedText.fromJson(json['caption']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": audio.toJson(),
      "album_cover_thumbnail": albumCoverThumbnail?.toJson(),
      "duration": duration,
      "title": title,
      "performer": performer,
      "caption": caption?.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

/// A document message (general file)
class InputMessageDocument extends InputMessageContent {
  InputMessageDocument(
      {required this.document,
      this.thumbnail,
      this.disableContentTypeDetection = false,
      this.caption});

  /// [document] Document to be sent
  InputFile document;

  /// [thumbnail] Document thumbnail, if available
  InputThumbnail? thumbnail;

  /// [disableContentTypeDetection] If true, automatic file type detection will be disabled and the document will be always sent as file. Always true for files sent to secret chats
  bool disableContentTypeDetection;

  /// [caption] Document caption; 0-GetOption("message_caption_length_max") characters
  FormattedText? caption;

  /// Parse from a json
  factory InputMessageDocument.fromJson(Map<String, dynamic> json) {
    return InputMessageDocument(
      document: InputFile.fromJson(json['document']),
      thumbnail: InputThumbnail.fromJson(json['thumbnail']),
      disableContentTypeDetection: json['disable_content_type_detection'],
      caption: FormattedText.fromJson(json['caption']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": document.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "disable_content_type_detection": disableContentTypeDetection,
      "caption": caption?.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

/// A photo message
class InputMessagePhoto extends InputMessageContent {
  InputMessagePhoto(
      {required this.photo,
      this.thumbnail,
      this.addedStickerFileIds,
      required this.width,
      required this.height,
      this.caption,
      this.ttl = 0});

  /// [photo] Photo to send
  InputFile photo;

  /// [thumbnail] Photo thumbnail to be sent, this is sent to the other party in secret chats only
  InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo, if applicable
  List<int>? addedStickerFileIds;

  /// [width] Photo width
  int width;

  /// [height] Photo height
  int height;

  /// [caption] Photo caption; 0-GetOption("message_caption_length_max") characters
  FormattedText? caption;

  /// [ttl] Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  int ttl;

  /// Parse from a json
  factory InputMessagePhoto.fromJson(Map<String, dynamic> json) {
    return InputMessagePhoto(
      photo: InputFile.fromJson(json['photo']),
      thumbnail: InputThumbnail.fromJson(json['thumbnail']),
      addedStickerFileIds: List<int>.from(
          (json['added_sticker_file_ids'] ?? []).map((item) => item).toList()),
      width: json['width'],
      height: json['height'],
      caption: FormattedText.fromJson(json['caption']),
      ttl: json['ttl'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "added_sticker_file_ids": addedStickerFileIds!.map((i) => i).toList(),
      "width": width,
      "height": height,
      "caption": caption == null ? null : caption!.toJson(),
      "ttl": ttl,
    };
  }

  static const CONSTRUCTOR = 'inputMessagePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageSticker extends InputMessageContent {
  /// A sticker message
  InputMessageSticker(
      {required this.sticker,
      this.thumbnail,
      required this.width,
      required this.height,
      required this.emoji});

  /// [sticker] Sticker to be sent
  InputFile sticker;

  /// [thumbnail] Sticker thumbnail, if available
  InputThumbnail? thumbnail;

  /// [width] Sticker width
  int width;

  /// [height] Sticker height
  int height;

  /// [emoji] Emoji used to choose the sticker
  String emoji;

  /// Parse from a json
  factory InputMessageSticker.fromJson(Map<String, dynamic> json) {
    return InputMessageSticker(
      sticker: InputFile.fromJson(json['sticker']),
      thumbnail: json['thumbnail'] != null
          ? InputThumbnail.fromJson(json['thumbnail'])
          : null,
      width: json['width'],
      height: json['height'],
      emoji: json['emoji'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": sticker.toJson(),
      "thumbnail": thumbnail?.toJson(),
      "width": width,
      "height": height,
      "emoji": emoji,
    };
  }

  static const CONSTRUCTOR = 'inputMessageSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideo extends InputMessageContent {
  /// A video message
  InputMessageVideo(
      {this.video,
      this.thumbnail,
      this.addedStickerFileIds,
      this.duration,
      this.width,
      this.height,
      this.supportsStreaming,
      this.caption,
      this.ttl});

  /// [video] Video to be sent
  InputFile? video;

  /// [thumbnail] Video thumbnail, if available
  InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the video, if applicable
  List<int>? addedStickerFileIds;

  /// [duration] Duration of the video, in seconds
  int? duration;

  /// [width] Video width
  int? width;

  /// [height] Video height
  int? height;

  /// [supportsStreaming] True, if the video should be tried to be streamed
  bool? supportsStreaming;

  /// [caption] Video caption; 0-GetOption("message_caption_length_max") characters
  FormattedText? caption;

  /// [ttl] Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  int? ttl;

  /// Parse from a json
  InputMessageVideo.fromJson(Map<String, dynamic> json) {
    video = InputFile.fromJson(json['video']);
    thumbnail = InputThumbnail.fromJson(json['thumbnail']);
    addedStickerFileIds = List<int>.from(
        (json['added_sticker_file_ids'] ?? []).map((item) => item).toList());
    duration = json['duration'];
    width = json['width'];
    height = json['height'];
    supportsStreaming = json['supports_streaming'];
    caption = FormattedText.fromJson(json['caption']);
    ttl = json['ttl'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": video == null ? null : video!.toJson(),
      "thumbnail": thumbnail == null ? null : thumbnail!.toJson(),
      "added_sticker_file_ids": addedStickerFileIds!.map((i) => i).toList(),
      "duration": duration,
      "width": width,
      "height": height,
      "supports_streaming": supportsStreaming,
      "caption": caption == null ? null : caption!.toJson(),
      "ttl": ttl,
    };
  }

  static const CONSTRUCTOR = 'inputMessageVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideoNote extends InputMessageContent {
  /// A video note message
  InputMessageVideoNote(
      {this.videoNote, this.thumbnail, this.duration, this.length});

  /// [videoNote] Video note to be sent
  InputFile? videoNote;

  /// [thumbnail] Video thumbnail, if available
  InputThumbnail? thumbnail;

  /// [duration] Duration of the video, in seconds
  int? duration;

  /// [length] Video width and height; must be positive and not greater than 640
  int? length;

  /// Parse from a json
  InputMessageVideoNote.fromJson(Map<String, dynamic> json) {
    videoNote = InputFile.fromJson(json['video_note']);
    thumbnail = InputThumbnail.fromJson(json['thumbnail']);
    duration = json['duration'];
    length = json['length'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video_note": videoNote == null ? null : videoNote!.toJson(),
      "thumbnail": thumbnail == null ? null : thumbnail!.toJson(),
      "duration": duration,
      "length": length,
    };
  }

  static const CONSTRUCTOR = 'inputMessageVideoNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVoiceNote extends InputMessageContent {
  /// A voice note message
  InputMessageVoiceNote(
      {this.voiceNote, this.duration, this.waveform, this.caption});

  /// [voiceNote] Voice note to be sent
  InputFile? voiceNote;

  /// [duration] Duration of the voice note, in seconds
  int? duration;

  /// [waveform] Waveform representation of the voice note, in 5-bit format
  String? waveform;

  /// [caption] Voice note caption; 0-GetOption("message_caption_length_max") characters
  FormattedText? caption;

  /// Parse from a json
  InputMessageVoiceNote.fromJson(Map<String, dynamic> json) {
    voiceNote = InputFile.fromJson(json['voice_note']);
    duration = json['duration'];
    waveform = json['waveform'];
    caption = FormattedText.fromJson(json['caption']);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": voiceNote == null ? null : voiceNote!.toJson(),
      "duration": duration,
      "waveform": waveform,
      "caption": caption == null ? null : caption!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageLocation extends InputMessageContent {
  /// A message with a location
  InputMessageLocation(
      {this.location,
      this.livePeriod,
      this.heading,
      this.proximityAlertRadius});

  /// [location] Location to be sent
  Location? location;

  /// [livePeriod] Period for which the location can be updated, in seconds; should be between 60 and 86400 for a live location and 0 otherwise
  int? livePeriod;

  /// [heading] For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown
  int? heading;

  /// [proximityAlertRadius] For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages
  int? proximityAlertRadius;

  /// Parse from a json
  InputMessageLocation.fromJson(Map<String, dynamic> json) {
    location = Location.fromJson(json['location']);
    livePeriod = json['live_period'];
    heading = json['heading'];
    proximityAlertRadius = json['proximity_alert_radius'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": location == null ? null : location!.toJson(),
      "live_period": livePeriod,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
    };
  }

  static const CONSTRUCTOR = 'inputMessageLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVenue extends InputMessageContent {
  /// A message with information about a venue
  InputMessageVenue({this.venue});

  /// [venue] Venue to send
  Venue? venue;

  /// Parse from a json
  InputMessageVenue.fromJson(Map<String, dynamic> json) {
    venue = Venue.fromJson(json['venue']);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "venue": venue == null ? null : venue!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageContact extends InputMessageContent {
  /// A message containing a user contact
  InputMessageContact({this.contact});

  /// [contact] Contact to send
  Contact? contact;

  /// Parse from a json
  InputMessageContact.fromJson(Map<String, dynamic> json) {
    contact = Contact.fromJson(json['contact']);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contact": contact == null ? null : contact!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageDice extends InputMessageContent {
  /// A dice message
  InputMessageDice({this.emoji, this.clearDraft});

  /// [emoji] Emoji on which the dice throw animation is based
  String? emoji;

  /// [clearDraft] True, if a chat message draft should be deleted
  bool? clearDraft;

  /// Parse from a json
  InputMessageDice.fromJson(Map<String, dynamic> json) {
    emoji = json['emoji'];
    clearDraft = json['clear_draft'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emoji": emoji,
      "clear_draft": clearDraft,
    };
  }

  static const CONSTRUCTOR = 'inputMessageDice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageGame extends InputMessageContent {
  /// A message with a game; not supported for channels or secret chats
  InputMessageGame({this.botUserId, this.gameShortName});

  /// [botUserId] User identifier of the bot that owns the game
  int? botUserId;

  /// [gameShortName] Short name of the game
  String? gameShortName;

  /// Parse from a json
  InputMessageGame.fromJson(Map<String, dynamic> json) {
    botUserId = json['bot_user_id'];
    gameShortName = json['game_short_name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "game_short_name": gameShortName,
    };
  }

  static const CONSTRUCTOR = 'inputMessageGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageInvoice extends InputMessageContent {
  /// A message with an invoice; can be used only by bots and only in private chats
  InputMessageInvoice(
      {this.invoice,
      this.title,
      this.description,
      this.photoUrl,
      this.photoSize,
      this.photoWidth,
      this.photoHeight,
      this.payload,
      this.providerToken,
      this.providerData,
      this.startParameter});

  /// [invoice] Invoice
  Invoice? invoice;

  /// [title] Product title; 1-32 characters
  String? title;

  /// [description] Product description; 0-255 characters
  String? description;

  /// [photoUrl] Product photo URL; optional
  String? photoUrl;

  /// [photoSize] Product photo size
  int? photoSize;

  /// [photoWidth] Product photo width
  int? photoWidth;

  /// [photoHeight] Product photo height
  int? photoHeight;

  /// [payload] The invoice payload
  String? payload;

  /// [providerToken] Payment provider token
  String? providerToken;

  /// [providerData] JSON-encoded data about the invoice, which will be shared with the payment provider
  String? providerData;

  /// [startParameter] Unique invoice bot start_parameter for the generation of this invoice
  String? startParameter;

  /// Parse from a json
  InputMessageInvoice.fromJson(Map<String, dynamic> json) {
    invoice = Invoice.fromJson(json['invoice']);
    title = json['title'];
    description = json['description'];
    photoUrl = json['photo_url'];
    photoSize = json['photo_size'];
    photoWidth = json['photo_width'];
    photoHeight = json['photo_height'];
    payload = json['payload'];
    providerToken = json['provider_token'];
    providerData = json['provider_data'];
    startParameter = json['start_parameter'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice": invoice == null ? null : invoice!.toJson(),
      "title": title,
      "description": description,
      "photo_url": photoUrl,
      "photo_size": photoSize,
      "photo_width": photoWidth,
      "photo_height": photoHeight,
      "payload": payload,
      "provider_token": providerToken,
      "provider_data": providerData,
      "start_parameter": startParameter,
    };
  }

  static const CONSTRUCTOR = 'inputMessageInvoice';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePoll extends InputMessageContent {
  /// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot
  InputMessagePoll(
      {this.question,
      this.options,
      this.isAnonymous,
      this.type,
      this.openPeriod,
      this.closeDate,
      this.isClosed});

  /// [question] Poll question, 1-255 characters (up to 300 characters for bots)
  String? question;

  /// [options] List of poll answer options, 2-10 strings 1-100 characters each
  List<String>? options;

  /// [isAnonymous] True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels
  bool? isAnonymous;

  /// [type] Type of the poll
  PollType? type;

  /// [openPeriod] Amount of time the poll will be active after creation, in seconds; for bots only
  int? openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will be automatically closed; for bots only
  int? closeDate;

  /// [isClosed] True, if the poll needs to be sent already closed; for bots only
  bool? isClosed;

  /// Parse from a json
  InputMessagePoll.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    options =
        List<String>.from((json['options'] ?? []).map((item) => item).toList());
    isAnonymous = json['is_anonymous'];
    type = PollType.fromJson(json['type']);
    openPeriod = json['open_period'];
    closeDate = json['close_date'];
    isClosed = json['is_closed'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "question": question,
      "options": options!.map((i) => i).toList(),
      "is_anonymous": isAnonymous,
      "type": type == null ? null : type!.toJson(),
      "open_period": openPeriod,
      "close_date": closeDate,
      "is_closed": isClosed,
    };
  }

  static const CONSTRUCTOR = 'inputMessagePoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageForwarded extends InputMessageContent {
  /// A forwarded message
  InputMessageForwarded(
      {required this.fromChatId,
      required this.messageId,
      this.inGameShare = false,
      required this.copyOptions});

  /// [fromChatId] Identifier for the chat this forwarded message came from
  int fromChatId;

  /// [messageId] Identifier of the message to forward
  int messageId;

  /// [inGameShare] True, if a game message should be shared within a launched game; applies only to game messages
  bool inGameShare;

  /// [copyOptions] Options to be used to copy content of the message without a link to the original message
  MessageCopyOptions copyOptions;

  /// Parse from a json
  factory InputMessageForwarded.fromJson(Map<String, dynamic> json) {
    return InputMessageForwarded(
      fromChatId: json['from_chat_id'],
      messageId: json['message_id'],
      inGameShare: json['in_game_share'],
      copyOptions: MessageCopyOptions.fromJson(json['copy_options']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "from_chat_id": fromChatId,
      "message_id": messageId,
      "in_game_share": inGameShare,
      "copy_options": copyOptions.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageForwarded';

  @override
  String getConstructor() => CONSTRUCTOR;
}
