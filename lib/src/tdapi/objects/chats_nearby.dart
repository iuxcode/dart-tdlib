part of '../index.dart';

class ChatsNearby extends TdObject {
  /// Represents a list of chats located nearby
  ChatsNearby({this.usersNearby, this.supergroupsNearby});

  /// [usersNearby] List of users nearby
  List<ChatNearby>? usersNearby;

  /// [supergroupsNearby] List of location-based supergroups nearby
  List<ChatNearby>? supergroupsNearby;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChatsNearby.fromJson(Map<String, dynamic> json) {
    this.usersNearby = List<ChatNearby>.from((json['users_nearby'] ?? [])
        .map((item) => ChatNearby.fromJson(item))
        .toList());
    this.supergroupsNearby = List<ChatNearby>.from(
        (json['supergroups_nearby'] ?? [])
            .map((item) => ChatNearby.fromJson(item))
            .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "users_nearby": this.usersNearby!.map((i) => i.toJson()).toList(),
      "supergroups_nearby":
          this.supergroupsNearby!.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatsNearby';

  @override
  String getConstructor() => CONSTRUCTOR;
}
