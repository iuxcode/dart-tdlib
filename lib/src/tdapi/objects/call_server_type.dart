part of '../index.dart';

/// Describes the type of a call server
/// a CallServerType return type can be :
/// * CallServerTypeTelegramReflector
/// * CallServerTypeWebrtc
class CallServerType extends TdObject {
  CallServerType();

  factory CallServerType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CallServerTypeTelegramReflector.CONSTRUCTOR:
        return CallServerTypeTelegramReflector.fromJson(json);
      case CallServerTypeWebrtc.CONSTRUCTOR:
        return CallServerTypeWebrtc.fromJson(json);
      default:
        throw 'CallServerType isn\'t found';
    }
  }

  static const CONSTRUCTOR = 'callServerType';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A Telegram call reflector
class CallServerTypeTelegramReflector extends CallServerType {
  CallServerTypeTelegramReflector({required this.peerTag});

  /// Parse from a json
  factory CallServerTypeTelegramReflector.fromJson(Map<String, dynamic> json) =>
      CallServerTypeTelegramReflector(peerTag: json['peer_tag']);

  static const CONSTRUCTOR = 'callServerTypeTelegramReflector';

  /// [peerTag] A peer tag to be used with the reflector
  String peerTag;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "peer_tag": this.peerTag,
    };
  }
}

/// A WebRTC server
class CallServerTypeWebrtc extends CallServerType {
  CallServerTypeWebrtc({
    required this.username,
    required this.password,
    this.supportsTurn = false,
    this.supportsStun = false,
  });

  /// Parse from a json
  factory CallServerTypeWebrtc.fromJson(Map<String, dynamic> json) =>
      CallServerTypeWebrtc(
        username: json['username'],
        password: json['password'],
        supportsTurn: json['supports_turn'],
        supportsStun: json['supports_stun'],
      );

  static const CONSTRUCTOR = 'callServerTypeWebrtc';

  /// [password] Authentication password
  String password;

  /// [supportsStun] True, if the server supports STUN
  bool supportsStun;

  /// [supportsTurn] True, if the server supports TURN
  bool supportsTurn;

  /// [username] Username to be used for authentication
  String username;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "username": this.username,
      "password": this.password,
      "supports_turn": this.supportsTurn,
      "supports_stun": this.supportsStun,
    };
  }
}
