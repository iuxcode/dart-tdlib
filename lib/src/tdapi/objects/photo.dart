part of '../index.dart';

/// Describes a photo
class Photo extends TdObject {
  Photo({
    this.hasStickers = false,
    this.minithumbnail,
    required this.sizes,
  });

  /// Parse from a json
  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        hasStickers: json['has_stickers'],
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
        sizes: List<PhotoSize>.from(
            (json['sizes'] ?? []).map((item) => PhotoSize.fromJson(item)).toList()),
      );

  static const CONSTRUCTOR = 'photo';

  /// [hasStickers] True, if stickers were added to the photo.
  /// The list of corresponding sticker sets can be received using getAttachedStickerSets
  bool hasStickers;

  /// [minithumbnail] Photo minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [sizes] Available variants of the photo, in different sizes
  List<PhotoSize> sizes;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "has_stickers": this.hasStickers,
      "minithumbnail":
          this.minithumbnail == null ? null : this.minithumbnail!.toJson(),
      "sizes": this.sizes.map((i) => i.toJson()).toList(),
    };
  }
}
