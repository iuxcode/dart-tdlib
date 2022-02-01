part of '../main.dart';

class ChatInviteLink extends TdObject {
  /// Contains a chat invite link
  ChatInviteLink({this.inviteLink});

  /// [inviteLink] Chat invite link
  String? inviteLink;

  /// [creatorUserId]
  int? creatorUserId;

  /// [date]
  int? date;

  /// [editDate]
  int? editDate;

  /// [expireDate]
  int? expireDate;

  /// [memberLimit]
  int? memberLimit;

  /// [memberCount]
  int? memberCount;

  /// [isPrimary]
  bool? isPrimary;

  /// [isRevoked]
  bool? isRevoked;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChatInviteLink.fromJson(Map<String, dynamic> json) {
    this.inviteLink = json['invite_link'];
    this.creatorUserId = json['creator_user_id'];
    this.date = json['date'];
    this.editDate = json['edit_date'];
    this.expireDate = json['expire_date'];
    this.memberLimit = json['member_limit'];
    this.memberCount = json['member_count'];
    this.isPrimary = json['is_primary'];
    this.isRevoked = json['is_revoked'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": this.inviteLink,
      "creator_user_id": this.creatorUserId,
      "date": this.date,
      "edit_date": this.editDate,
      "expire_date": this.expireDate,
      "member_limit": this.memberLimit,
      "member_count": this.memberCount,
      "is_primary": this.isPrimary,
      "is_revoked": this.isRevoked,
    };
  }

  static const CONSTRUCTOR = 'chatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
