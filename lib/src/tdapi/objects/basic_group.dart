part of '../index.dart';

/// Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users)
class BasicGroup extends TdObject {
  BasicGroup({
    required this.id,
    required this.memberCount,
    required this.status,
    this.isActive = false,
    this.upgradedToSupergroupId = 0,
    this.extra,
  });

  /// Parse from a json
  factory BasicGroup.fromJson(Map<String, dynamic> json) {
    return BasicGroup(
      id: json['id'],
      memberCount: json['member_count'],
      status: ChatMemberStatus.fromJson(json['status']),
      isActive: json['is_active'],
      upgradedToSupergroupId: json['upgraded_to_supergroup_id'],
      extra: json['@extra'],
    );
  }

  static const CONSTRUCTOR = 'basicGroup';

  /// callback sign
  dynamic extra;

  /// [id] Group identifier
  int id;

  /// [isActive] True, if the group is active
  bool isActive;

  /// [memberCount] Number of members in the group
  int memberCount;

  /// [status] Status of the current user in the group
  ChatMemberStatus status;

  /// [upgradedToSupergroupId] Identifier of the supergroup to which this group was upgraded;
  /// 0 if none
  int upgradedToSupergroupId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "member_count": this.memberCount,
      "status": this.status.toJson(),
      "is_active": this.isActive,
      "upgraded_to_supergroup_id": this.upgradedToSupergroupId,
    };
  }
}
