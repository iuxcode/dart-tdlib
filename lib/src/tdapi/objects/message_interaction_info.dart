part of '../index.dart';

/// Contains information about interactions with a message
class MessageInteractionInfo extends TdObject {
  MessageInteractionInfo({
    required this.viewCount,
    required this.forwardCount,
    this.replyInfo,
  });

  /// Parse from a json
  factory MessageInteractionInfo.fromJson(Map<String, dynamic> json) =>
      MessageInteractionInfo(
        viewCount: json['view_count'],
        forwardCount: json['forward_count'],
        replyInfo: json['reply_info'] != null
            ? MessageReplyInfo.fromJson(json['reply_info'])
            : null,
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageInteractionInfo';

  /// [forwardCount] Number of times the message was forwarded
  int forwardCount;

  /// [replyInfo] Contains information about direct or indirect replies to the message;
  /// may be null.
  /// Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which are not replies itself
  MessageReplyInfo? replyInfo;

  /// [viewCount] Number of times the message was viewed
  int viewCount;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "view_count": viewCount,
      "forward_count": forwardCount,
      "reply_info": replyInfo?.toJson(),
    };
  }
}
