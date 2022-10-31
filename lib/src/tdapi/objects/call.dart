part of '../index.dart';

/// Describes a call
class Call extends TdObject {
  Call({
    required this.id,
    required this.userId,
    this.isOutgoing = false,
    this.isVideo = false,
    required this.state,
  });

  /// Parse from a json
  factory Call.fromJson(Map<String, dynamic> json) => Call(
        id: json['id'],
        userId: json['user_id'],
        isOutgoing: json['is_outgoing'],
        isVideo: json['is_video'],
        state: CallState.fromJson(json['state']),
      );

  static const CONSTRUCTOR = 'call';

  /// [id] Call identifier, not persistent
  int id;

  /// [isOutgoing] True, if the call is outgoing
  bool isOutgoing;

  /// [isVideo] True, if the call is a video call
  bool isVideo;

  /// [state] Call state
  CallState state;

  /// [userId] Peer user identifier
  int userId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "user_id": this.userId,
      "is_outgoing": this.isOutgoing,
      "is_video": this.isVideo,
      "state": this.state.toJson(),
    };
  }
}
