part of '../tdapi.dart';

class BasicGroupFullInfo extends TdObject {
  /// Contains full information about a basic group
  BasicGroupFullInfo({this.photo, this.description, this.creatorUserId, this.members, this.inviteLink});

  /// [photo] Chat photo; may be null
  ChatPhoto? photo;

  /// [description] Group description
  String? description;

  /// [creatorUserId] User identifier of the creator of the group; 0 if unknown
  int? creatorUserId;

  /// [members] Group members
  List<ChatMember>? members;

  /// [inviteLink] Invite link for this group; available only after it has been generated at least once and only for the group creator
  ChatInviteLink? inviteLink;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  BasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    this.photo = ChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{});
    this.description = json['description'];
    this.creatorUserId = json['creator_user_id'];
    this.members = List<ChatMember>.from((json['members'] ?? [])
      .map((item) => ChatMember.fromJson(item ?? <String, dynamic>{}))
      .toList());
    this.inviteLink = ChatInviteLink.fromJson(json['invite_link'] ?? <String, dynamic>{});
    this.extra = json['@extra'] ?? '';
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo == null ? null : this.photo!.toJson(),
      "description": this.description,
      "creator_user_id": this.creatorUserId,
      "members": List<ChatMember>.from(this.members ?? []).map((i) => i.toJson()).toList(),
      "invite_link": this.inviteLink == null ? null : this.inviteLink!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'basicGroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
