part of '../index.dart';

/// Describes an image in JPEG format
class PhotoSize extends TdObject {
  PhotoSize({
    required this.type,
    required this.photo,
    required this.width,
    required this.height,
    required this.progressiveSizes,
  });

  /// Parse from a json
  factory PhotoSize.fromJson(Map<String, dynamic> json) => PhotoSize(
        type: json['type'],
        photo: File.fromJson(json['photo']),
        width: json['width'],
        height: json['height'],
        progressiveSizes: List<int>.from(
            (json['progressive_sizes'] ?? []).map((item) => item).toList()),
      );

  static const CONSTRUCTOR = 'photoSize';

  /// [height] Image height
  int height;

  /// [photo] Information about the image file
  File photo;

  /// [progressiveSizes] Sizes of progressive JPEG file prefixes, which can be used to preliminarily show the image
  List<int> progressiveSizes;

  /// [type] Image type (see https://core.telegram.org/constructor/photoSize)
  String type;

  /// [width] Image width
  int width;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type,
      "photo": this.photo.toJson(),
      "width": this.width,
      "height": this.height,
      "progressive_sizes": this.progressiveSizes.map((i) => i).toList(),
    };
  }
}
