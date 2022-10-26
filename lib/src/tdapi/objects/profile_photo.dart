part of '../index.dart';

/// Describes a user profile photo
class ProfilePhoto extends TdObject {
  ProfilePhoto({
    this.id = 0,
    required this.small,
    required this.big,
    this.hasAnimation = false,
  });

  /// Parse from a json
  factory ProfilePhoto.fromJson(Map<String, dynamic> json) => ProfilePhoto(
        id: int.parse(json['id']),
        small: File.fromJson(json['small']),
        big: File.fromJson(json['big']),
        hasAnimation: json['has_animation'],
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'profilePhoto';

  /// [big] A big (640x640) user profile photo. The file can be downloaded only before the photo is changed
  File big;

  /// [hasAnimation] True, if the photo has animated variant
  bool hasAnimation;

  /// [id] Photo identifier; 0 for an empty photo. Can be used to find a photo
  /// in a list of user profile photos
  int id;

  /// [small] A small (160x160) user profile photo.
  /// The file can be downloaded only before the photo is changed
  File small;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "small": small.toJson(),
      "big": big.toJson(),
      "has_animation": hasAnimation,
    };
  }
}
