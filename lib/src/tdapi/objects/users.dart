part of '../index.dart';

/// Represents a list of users
class Users extends TdObject {
  Users({
    required this.totalCount,
    required this.userIds,
    this.extra,
  });

  /// Parse from a json
  factory Users.fromJson(Map<String, dynamic> json) => Users(
        totalCount: json['total_count'],
        userIds: List<int>.from(
            (json['user_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra'],
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'users';

  /// callback sign
  dynamic extra;

  /// [totalCount] Approximate total count of users found
  int totalCount;

  /// [userIds] A list of user identifiers
  List<int> userIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }
}
