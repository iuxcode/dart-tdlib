part of '../index.dart';

/// Contains basic information about the photo of a chat
class ChatPhotoInfo extends TdObject {
  ChatPhotoInfo(
      {required this.small, required this.big, this.hasAnimation = false});

  /// Parse from a json
  factory ChatPhotoInfo.fromJson(Map<String, dynamic> json) {
    return ChatPhotoInfo(
        small: File.fromJson(json['small']),
        big: File.fromJson(json['big']),
        hasAnimation: json['has_animation']);
  }

  static const CONSTRUCTOR = 'chatPhotoInfo';

  /// [big] A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
  File big;

  /// [hasAnimation] True, if the photo has animated variant
  bool hasAnimation;

  /// [small] A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed
  File small;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "small": small.toJson(),
      "big": big.toJson(),
      "has_animation": hasAnimation,
    };
  }
}
