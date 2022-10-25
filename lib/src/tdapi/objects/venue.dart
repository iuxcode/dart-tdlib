part of '../index.dart';

/// Describes a venue
class Venue extends TdObject {
  Venue({
    required this.location,
    required this.title,
    required this.address,
    required this.provider,
    required this.id,
    required this.type,
  });

  /// Parse from a json
  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
        location: Location.fromJson(json['location']),
        title: json['title'],
        address: json['address'],
        provider: json['provider'],
        id: json['id'],
        type: json['type'],
      );

  static const CONSTRUCTOR = 'venue';

  /// [address] Venue address; as defined by the sender
  String address;

  /// [id] Identifier of the venue in the provider database; as defined by the sender
  String id;

  /// [location] Venue location; as defined by the sender
  Location location;

  /// [provider] Provider of the venue database; as defined by the sender.
  /// Currently only "foursquare" and "gplaces" (Google Places) need to be supported
  String provider;

  /// [title] Venue name; as defined by the sender
  String title;

  /// [type] Type of the venue in the provider database; as defined by the sender
  String type;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location.toJson(),
      "title": this.title,
      "address": this.address,
      "provider": this.provider,
      "id": this.id,
      "type": this.type,
    };
  }
}
