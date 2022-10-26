// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Contains a description of a custom keyboard and actions that can be done with it to quickly reply to bots
class ReplyMarkup extends TdObject {
  ReplyMarkup();

  /// a ReplyMarkup return type can be :
  /// * ReplyMarkupRemoveKeyboard
  /// * ReplyMarkupForceReply
  /// * ReplyMarkupShowKeyboard
  /// * ReplyMarkupInlineKeyboard
  factory ReplyMarkup.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ReplyMarkupRemoveKeyboard.CONSTRUCTOR:
        return ReplyMarkupRemoveKeyboard.fromJson(json);
      case ReplyMarkupForceReply.CONSTRUCTOR:
        return ReplyMarkupForceReply.fromJson(json);
      case ReplyMarkupShowKeyboard.CONSTRUCTOR:
        return ReplyMarkupShowKeyboard.fromJson(json);
      case ReplyMarkupInlineKeyboard.CONSTRUCTOR:
        return ReplyMarkupInlineKeyboard.fromJson(json);
      default:
        return ReplyMarkup();
    }
  }

  static const CONSTRUCTOR = 'replyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// Instructs application to remove the keyboard once this message has been received.
/// This kind of keyboard can't be received in an incoming message;
/// instead, UpdateChatReplyMarkup with message_id == 0 will be sent
class ReplyMarkupRemoveKeyboard extends ReplyMarkup {
  ReplyMarkupRemoveKeyboard({this.isPersonal = false});

  /// Parse from a json
  factory ReplyMarkupRemoveKeyboard.fromJson(Map<String, dynamic> json) =>
      ReplyMarkupRemoveKeyboard(isPersonal: json['is_personal']);

  static const CONSTRUCTOR = 'replyMarkupRemoveKeyboard';

  /// [isPersonal] True, if the keyboard is removed only for the mentioned users or the target user of a reply
  bool isPersonal;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_personal": isPersonal,
    };
  }
}

/// Instructs application to force a reply to this message
class ReplyMarkupForceReply extends ReplyMarkup {
  ReplyMarkupForceReply({this.isPersonal = false});

  /// Parse from a json
  factory ReplyMarkupForceReply.fromJson(Map<String, dynamic> json) =>
      ReplyMarkupForceReply(isPersonal: json['is_personal']);

  static const CONSTRUCTOR = 'replyMarkupForceReply';

  /// [isPersonal] True, if a forced reply must automatically be shown to the current user.
  /// For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply
  bool isPersonal;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_personal": isPersonal,
    };
  }
}

/// Contains a custom keyboard layout to quickly reply to bots
class ReplyMarkupShowKeyboard extends ReplyMarkup {
  ReplyMarkupShowKeyboard({
    required this.rows,
    this.resizeKeyboard = false,
    this.oneTime = false,
    this.isPersonal = false,
  });

  /// Parse from a json
  factory ReplyMarkupShowKeyboard.fromJson(Map<String, dynamic> json) =>
      ReplyMarkupShowKeyboard(
        rows: List<List<KeyboardButton>>.from((json['rows'] ?? [])
            .map((item) => List<KeyboardButton>.from((item ?? [])
                .map((innerItem) => KeyboardButton.fromJson(innerItem))
                .toList()))
            .toList()),
        resizeKeyboard: json['resize_keyboard'],
        oneTime: json['one_time'],
        isPersonal: json['is_personal'],
      );

  static const CONSTRUCTOR = 'replyMarkupShowKeyboard';

  /// [isPersonal] True, if the keyboard must automatically be shown to the current user.
  /// For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply
  bool isPersonal;

  /// [oneTime] True, if the application needs to hide the keyboard after use
  bool oneTime;

  /// [resizeKeyboard] True, if the application needs to resize the keyboard vertically
  bool resizeKeyboard;

  /// [rows] A list of rows of bot keyboard buttons
  List<List<KeyboardButton>> rows;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rows": rows.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "resize_keyboard": resizeKeyboard,
      "one_time": oneTime,
      "is_personal": isPersonal,
    };
  }
}

/// Contains an inline keyboard layout
class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  ReplyMarkupInlineKeyboard({required this.rows});

  /// Parse from a json
  factory ReplyMarkupInlineKeyboard.fromJson(Map<String, dynamic> json) =>
      ReplyMarkupInlineKeyboard(
          rows: List<List<InlineKeyboardButton>>.from((json['rows'] ?? [])
              .map((item) => List<InlineKeyboardButton>.from((item ?? [])
                  .map((innerItem) => InlineKeyboardButton.fromJson(innerItem))
                  .toList()))
              .toList()));

  static const CONSTRUCTOR = 'replyMarkupInlineKeyboard';

  /// [rows] A list of rows of inline keyboard buttons
  List<List<InlineKeyboardButton>> rows;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rows": rows.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }
}
