// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Describes the type of an inline keyboard button
class InlineKeyboardButtonType extends TdObject {
  InlineKeyboardButtonType();

  /// a InlineKeyboardButtonType return type can be :
  /// * InlineKeyboardButtonTypeUrl
  /// * InlineKeyboardButtonTypeLoginUrl
  /// * InlineKeyboardButtonTypeCallback
  /// * InlineKeyboardButtonTypeCallbackWithPassword
  /// * InlineKeyboardButtonTypeCallbackGame
  /// * InlineKeyboardButtonTypeSwitchInline
  /// * InlineKeyboardButtonTypeBuy
  factory InlineKeyboardButtonType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InlineKeyboardButtonTypeUrl.CONSTRUCTOR:
        return InlineKeyboardButtonTypeUrl.fromJson(json);
      case InlineKeyboardButtonTypeLoginUrl.CONSTRUCTOR:
        return InlineKeyboardButtonTypeLoginUrl.fromJson(json);
      case InlineKeyboardButtonTypeCallback.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallback.fromJson(json);
      case InlineKeyboardButtonTypeCallbackWithPassword.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallbackWithPassword.fromJson(json);
      case InlineKeyboardButtonTypeCallbackGame.CONSTRUCTOR:
        return InlineKeyboardButtonTypeCallbackGame.fromJson(json);
      case InlineKeyboardButtonTypeSwitchInline.CONSTRUCTOR:
        return InlineKeyboardButtonTypeSwitchInline.fromJson(json);
      case InlineKeyboardButtonTypeBuy.CONSTRUCTOR:
        return InlineKeyboardButtonTypeBuy.fromJson(json);
      default:
        return InlineKeyboardButtonType();
    }
  }

  static const CONSTRUCTOR = 'inlineKeyboardButtonType';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A button that opens a specified URL
class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeUrl({required this.url});

  /// Parse from a json
  factory InlineKeyboardButtonTypeUrl.fromJson(Map<String, dynamic> json) =>
      InlineKeyboardButtonTypeUrl(url: json['url']);

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeUrl';

  /// [url] HTTP or tg:// URL to open
  String url;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
    };
  }
}

/// A button that opens a specified URL and automatically authorize the current user if allowed to do so
class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeLoginUrl(
      {required this.url, required this.id, required this.forwardText});

  /// Parse from a json
  factory InlineKeyboardButtonTypeLoginUrl.fromJson(
          Map<String, dynamic> json) =>
      InlineKeyboardButtonTypeLoginUrl(
        url: json['url'],
        id: json['id'],
        forwardText: json['forward_text'],
      );

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeLoginUrl';

  /// [forwardText] If non-empty, new text of the button in forwarded messages
  String forwardText;

  /// [id] Unique button identifier
  int id;

  /// [url] An HTTP URL to open
  String url;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "id": id,
      "forward_text": forwardText,
    };
  }
}

/// A button that sends a callback query to a bot
class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeCallback({required this.data});

  /// Parse from a json
  factory InlineKeyboardButtonTypeCallback.fromJson(
          Map<String, dynamic> json) =>
      InlineKeyboardButtonTypeCallback(data: json['data']);

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallback';

  /// [data] Data to be sent to the bot via a callback query
  String data;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": data,
    };
  }
}

/// A button that asks for password of the current user and then sends a callback query to a bot
class InlineKeyboardButtonTypeCallbackWithPassword
    extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeCallbackWithPassword({required this.data});

  /// Parse from a json
  factory InlineKeyboardButtonTypeCallbackWithPassword.fromJson(
          Map<String, dynamic> json) =>
      InlineKeyboardButtonTypeCallbackWithPassword(data: json['data']);

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallbackWithPassword';

  /// [data] Data to be sent to the bot via a callback query
  String data;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": data,
    };
  }
}

/// A button with a game that sends a callback query to a bot.
/// This button must be in the first column and row of the keyboard and can
/// be attached only to a message with content of the type messageGame

class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeCallbackGame();

  /// Parse from a json
  InlineKeyboardButtonTypeCallbackGame.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeCallbackGame';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A button that forces an inline query to the bot to be inserted in the input field
class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeSwitchInline({
    required this.query,
    this.inCurrentChat = false,
  });

  /// Parse from a json
  factory InlineKeyboardButtonTypeSwitchInline.fromJson(
          Map<String, dynamic> json) =>
      InlineKeyboardButtonTypeSwitchInline(
          query: json['query'], inCurrentChat: json['in_current_chat']);

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeSwitchInline';

  /// [inCurrentChat] True, if the inline query should be sent from the current chat
  bool inCurrentChat;

  /// [query] Inline query to be sent to the bot
  String query;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
      "in_current_chat": inCurrentChat,
    };
  }
}

/// A button to buy something. This button must be in the first column and row of the keyboard and can be attached
/// only to a message with content of the type messageInvoice
class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeBuy();

  /// Parse from a json
  InlineKeyboardButtonTypeBuy.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'inlineKeyboardButtonTypeBuy';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
