part of '../index.dart';

/// Describes a sticker
class Sticker extends TdObject {
  Sticker({
    this.setId = 0,
    required this.width,
    required this.height,
    required this.emoji,
    required this.isAnimated,
    required this.isMask,
    this.maskPosition,
    required this.outline,
    this.thumbnail,
    required this.sticker,
  });

  /// Parse from a json
  factory Sticker.fromJson(Map<String, dynamic> json) => Sticker(
        setId: int.tryParse(json['set_id']) ?? 0,
        width: json['width'],
        height: json['height'],
        emoji: json['emoji'],
        isAnimated: json['is_animated'],
        isMask: json['is_mask'],
        maskPosition: MaskPosition.fromJson(json['mask_position']),
        outline: List<ClosedVectorPath>.from((json['outline'] ?? [])
            .map((item) => ClosedVectorPath.fromJson(item))
            .toList()),
        thumbnail: Thumbnail.fromJson(json['thumbnail']),
        sticker: File.fromJson(json['sticker']),
      );

  static const CONSTRUCTOR = 'sticker';

  /// [emoji] Emoji corresponding to the sticker
  String emoji;

  /// [height] Sticker height; as defined by the sender
  int height;

  /// [isAnimated] True, if the sticker is an animated sticker in TGS format
  bool isAnimated;

  /// [isMask] True, if the sticker is a mask
  bool isMask;

  /// [maskPosition] Position where the mask should be placed; may be null
  MaskPosition? maskPosition;

  /// [outline] Sticker's outline represented as a list of closed vector paths; may be empty.
  /// The coordinate system origin is in the upper-left corner
  List<ClosedVectorPath> outline;

  /// [setId] The identifier of the sticker set to which the sticker belongs; 0 if none
  int setId;

  /// [sticker] File containing the sticker
  File sticker;

  /// [thumbnail] Sticker thumbnail in WEBP or JPEG format; may be null
  Thumbnail? thumbnail;

  /// [width] Sticker width; as defined by the sender
  int width;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "set_id": this.setId,
      "width": this.width,
      "height": this.height,
      "emoji": this.emoji,
      "is_animated": this.isAnimated,
      "is_mask": this.isMask,
      "mask_position":
          this.maskPosition == null ? null : this.maskPosition!.toJson(),
      "outline": this.outline.map((i) => i.toJson()).toList(),
      "thumbnail": this.thumbnail?.toJson(),
      "sticker": this.sticker.toJson(),
    };
  }
}
