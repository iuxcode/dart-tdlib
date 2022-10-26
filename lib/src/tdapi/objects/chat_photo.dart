part of '../index.dart';

/// Describes a chat or user profile photo
class ChatPhoto extends TdObject {
  ChatPhoto({
    required this.id,
    required this.addedDate,
    this.minithumbnail,
    required this.sizes,
    this.animation,
  });

  /// Parse from a json
  factory ChatPhoto.fromJson(Map<String, dynamic> json) => ChatPhoto(
        id: int.parse(json['id']),
        addedDate: json['added_date'],
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
        sizes: List<PhotoSize>.from((json['sizes'] ?? [])
            .map((item) => PhotoSize.fromJson(item))
            .toList()),
        animation: AnimatedChatPhoto.fromJson(json['animation']),
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatPhoto';

  /// [addedDate] Point in time (Unix timestamp) when the photo has been added
  int addedDate;

  /// [animation] Animated variant of the photo in MPEG4 format; may be null
  AnimatedChatPhoto? animation;

  /// [id] Unique photo identifier
  int id;

  /// [minithumbnail] Photo minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [sizes] Available variants of the photo in JPEG format, in different size
  List<PhotoSize> sizes;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "added_date": addedDate,
      "minithumbnail": minithumbnail?.toJson(),
      "sizes": sizes.map((i) => i.toJson()).toList(),
      "animation": animation == null ? null : animation!.toJson(),
    };
  }
}
