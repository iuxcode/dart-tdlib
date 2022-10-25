part of '../index.dart';

/// Describes a video file
class Video extends TdObject {
  Video({
    required this.duration,
    required this.width,
    required this.height,
    required this.fileName,
    required this.mimeType,
    required this.hasStickers,
    required this.supportsStreaming,
    this.minithumbnail,
    this.thumbnail,
    required this.video,
  });

  /// Parse from a json
  factory Video.fromJson(Map<String, dynamic> json) => Video(
        duration: json['duration'],
        width: json['width'],
        height: json['height'],
        fileName: json['file_name'],
        mimeType: json['mime_type'],
        hasStickers: json['has_stickers'],
        supportsStreaming: json['supports_streaming'],
        minithumbnail:
            Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{}),
        thumbnail: Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
        video: File.fromJson(json['video'] ?? <String, dynamic>{}),
      );

  static const CONSTRUCTOR = 'video';

  /// [duration] Duration of the video, in seconds; as defined by the sender
  int duration;

  /// [fileName] Original name of the file; as defined by the sender
  String fileName;

  /// [hasStickers] True, if stickers were added to the video. The list of corresponding sticker sets can be received using getAttachedStickerSets
  bool hasStickers;

  /// [height] Video height; as defined by the sender
  int height;

  /// [mimeType] MIME type of the file; as defined by the sender
  String mimeType;

  /// [minithumbnail] Video minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [supportsStreaming] True, if the video should be tried to be streamed
  bool supportsStreaming;

  /// [thumbnail] Video thumbnail in JPEG or MPEG4 format; as defined by the sender; may be null
  Thumbnail? thumbnail;

  /// [video] File containing the video
  File video;

  /// [width] Video width; as defined by the sender
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
      "supports_streaming": this.supportsStreaming,
      "minithumbnail": this.minithumbnail?.toJson(),
      "thumbnail": this.thumbnail?.toJson(),
      "video": this.video.toJson(),
    };
  }
}
