// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Describes a keyboard button type
class KeyboardButtonType extends TdObject {
  KeyboardButtonType();

  /// a KeyboardButtonType return type can be :
  /// * KeyboardButtonTypeText
  /// * KeyboardButtonTypeRequestPhoneNumber
  /// * KeyboardButtonTypeRequestLocation
  /// * KeyboardButtonTypeRequestPoll
  factory KeyboardButtonType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case KeyboardButtonTypeText.CONSTRUCTOR:
        return KeyboardButtonTypeText.fromJson(json);
      case KeyboardButtonTypeRequestPhoneNumber.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);
      case KeyboardButtonTypeRequestLocation.CONSTRUCTOR:
        return KeyboardButtonTypeRequestLocation.fromJson(json);
      case KeyboardButtonTypeRequestPoll.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPoll.fromJson(json);
      default:
        return KeyboardButtonType();
    }
  }

  static const CONSTRUCTOR = 'keyboardButtonType';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A simple button, with text that should be sent when the button is pressed
class KeyboardButtonTypeText extends KeyboardButtonType {
  KeyboardButtonTypeText();

  /// Parse from a json
  KeyboardButtonTypeText.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'keyboardButtonTypeText';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A button that sends the user's phone number when pressed; available only in private chats
class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  KeyboardButtonTypeRequestPhoneNumber();

  /// Parse from a json
  KeyboardButtonTypeRequestPhoneNumber.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A button that sends the user's location when pressed; available only in private chats
class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  KeyboardButtonTypeRequestLocation();

  /// Parse from a json
  KeyboardButtonTypeRequestLocation.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestLocation';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A button that allows the user to create and send a poll when pressed; available only in private chats
class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  KeyboardButtonTypeRequestPoll(
      {this.forceRegular = false, this.forceQuiz = false});

  /// Parse from a json
  factory KeyboardButtonTypeRequestPoll.fromJson(Map<String, dynamic> json) =>
      KeyboardButtonTypeRequestPoll(
        forceRegular: json['force_regular'],
        forceQuiz: json['force_quiz'],
      );

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestPoll';

  /// [forceQuiz] If true, only polls in quiz mode must be allowed to create
  bool forceQuiz;

  /// [forceRegular] If true, only regular polls must be allowed to create
  bool forceRegular;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "force_regular": forceRegular,
      "force_quiz": forceQuiz,
    };
  }
}
