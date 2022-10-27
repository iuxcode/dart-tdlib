part of '../index.dart';

class AnimatedEmoji extends TdObject {
  AnimatedEmoji(
      {required this.sticker, required this.fitzpatrickType, this.sound});

  factory AnimatedEmoji.fromJson(Map<String, dynamic> json) => AnimatedEmoji(
        sticker: Sticker.fromJson(json['sticker']),
        fitzpatrickType: json['fitzpatrick_type'] ?? 0,
        sound: json['sound'] != null ? File.fromJson(json['sound']) : null,
      );

  static const CONSTRUCTOR = 'animatedEmoji';

  /// Emoji modifier fitzpatrick type. 0-6; O if none.
  int fitzpatrickType;

  /// File Containing the sound to be played when the animated emoji is clicked any; [may be null]
  /// The sound is encoded with the [Opus] codec and stored inside an [OGG] Container;
  File? sound;

  /// Animated Sticker for the emoji.
  Sticker sticker;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker,
      "fitzpatrick_type": this.fitzpatrickType,
      "sound": this.sound?.toJson(),
    };
  }
}
