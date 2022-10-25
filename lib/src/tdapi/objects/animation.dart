part of '../index.dart';

/// Describes an animation file. The animation must be encoded in GIF or MPEG4 format
class Animation extends TdObject {
  Animation({
    required this.duration,
    required this.width,
    required this.height,
    required this.fileName,
    required this.mimeType,
    required this.hasStickers,
    this.minithumbnail,
    this.thumbnail,
    required this.animation,
  });

  /// Parse from a json
  factory Animation.fromJson(Map<String, dynamic> json) => Animation(
        duration: json['duration'],
        width: json['width'],
        height: json['height'],
        fileName: json['file_name'],
        mimeType: json['mime_type'],
        hasStickers: json['has_stickers'],
        minithumbnail: json['minithumbnail'] != null
            ? Minithumbnail.fromJson(json['minithumbnail'])
            : null,
        thumbnail:
            json['thumbnail'] != null ? Thumbnail.fromJson(json['thumbnail']) : null,
        animation: File.fromJson(json['animation']),
      );

  static const CONSTRUCTOR = 'animation';

  /// [animation] File containing the animation
  File animation;

  /// [duration] Duration of the animation, in seconds; as defined by the sender
  int duration;

  /// [fileName] Original name of the file; as defined by the sender
  String fileName;

  /// [hasStickers] True, if stickers were added to the animation. The list of corresponding sticker set can be received using getAttachedStickerSets
  bool hasStickers;

  /// [height] Height of the animation
  int height;

  /// [mimeType] MIME type of the file, usually "image/gif" or "video/mp4"
  String mimeType;

  /// [minithumbnail] Animation minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [thumbnail] Animation thumbnail in JPEG or MPEG4 format; may be null
  Thumbnail? thumbnail;

  /// [width] Width of the animation
  int width;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "file_name": this.fileName,
      "mime_type": this.mimeType,
      "has_stickers": this.hasStickers,
      "minithumbnail": this.minithumbnail?.toJson(),
      "thumbnail": this.thumbnail?.toJson(),
      "animation": this.animation.toJson(),
    };
  }
}
