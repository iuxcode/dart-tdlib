part of '../index.dart';

/// Animated variant of a chat photo in MPEG4 format
class AnimatedChatPhoto extends TdObject {
  AnimatedChatPhoto({
    required this.length,
    required this.file,
    required this.mainFrameTimestamp,
  });

  /// Parse from a json
  factory AnimatedChatPhoto.fromJson(Map<String, dynamic> json) => AnimatedChatPhoto(
        length: json['length'],
        file: File.fromJson(json['file']),
        mainFrameTimestamp: json['main_frame_timestamp'],
      );

  static const CONSTRUCTOR = 'animatedChatPhoto';

  /// [file] Information about the animation file
  File file;

  /// [length] Animation width and height
  int length;

  /// [mainFrameTimestamp] Timestamp of the frame, used as a static chat photo
  double mainFrameTimestamp;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "length": this.length,
      "file": this.file.toJson(),
      "main_frame_timestamp": this.mainFrameTimestamp,
    };
  }
}
