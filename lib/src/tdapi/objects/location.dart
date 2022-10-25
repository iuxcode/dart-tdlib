part of '../index.dart';

/// Describes a location on planet Earth
class Location extends TdObject {
  Location({
    required this.latitude,
    required this.longitude,
    this.horizontalAccuracy = 0,
  });

  /// Parse from a json
  factory Location.fromJson(Map<String, dynamic> json) => Location(
        latitude: json['latitude'],
        longitude: json['longitude'],
        horizontalAccuracy: json['horizontal_accuracy'],
      );

  static const CONSTRUCTOR = 'location';

  /// [horizontalAccuracy] The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown
  double horizontalAccuracy;

  /// [latitude] of the location in degrees; as defined by the sender
  double latitude;

  /// [longitude] of the location, in degrees; as defined by the sender
  double? longitude;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "latitude": this.latitude,
      "longitude": this.longitude,
      "horizontal_accuracy": this.horizontalAccuracy,
    };
  }
}
