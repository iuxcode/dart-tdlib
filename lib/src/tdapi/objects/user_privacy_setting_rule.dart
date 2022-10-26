// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Represents a single rule for managing privacy settings
/// a UserPrivacySettingRule return type can be :
/// * UserPrivacySettingRuleAllowAll
/// * UserPrivacySettingRuleAllowContacts
/// * UserPrivacySettingRuleAllowUsers
/// * UserPrivacySettingRuleAllowChatMembers
/// * UserPrivacySettingRuleRestrictAll
/// * UserPrivacySettingRuleRestrictContacts
/// * UserPrivacySettingRuleRestrictUsers
/// * UserPrivacySettingRuleRestrictChatMembers
class UserPrivacySettingRule extends TdObject {
  UserPrivacySettingRule();

  factory UserPrivacySettingRule.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserPrivacySettingRuleAllowAll.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowAll.fromJson(json);
      case UserPrivacySettingRuleAllowContacts.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowContacts.fromJson(json);
      case UserPrivacySettingRuleAllowUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowUsers.fromJson(json);
      case UserPrivacySettingRuleAllowChatMembers.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowChatMembers.fromJson(json);
      case UserPrivacySettingRuleRestrictAll.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictAll.fromJson(json);
      case UserPrivacySettingRuleRestrictContacts.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictContacts.fromJson(json);
      case UserPrivacySettingRuleRestrictUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictUsers.fromJson(json);
      case UserPrivacySettingRuleRestrictChatMembers.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictChatMembers.fromJson(json);
      default:
        return UserPrivacySettingRule();
    }
  }

  static const CONSTRUCTOR = 'userPrivacySettingRule';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A rule to allow all users to do something
class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  UserPrivacySettingRuleAllowAll();

  /// Parse from a json
  UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowAll';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A rule to allow all of a user's contacts to do something
class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  UserPrivacySettingRuleAllowContacts();

  /// Parse from a json
  UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowContacts';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A rule to allow certain specified users to do something
class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  UserPrivacySettingRuleAllowUsers({required this.userIds});

  /// Parse from a json
  factory UserPrivacySettingRuleAllowUsers.fromJson(
          Map<String, dynamic> json) =>
      UserPrivacySettingRuleAllowUsers(
          userIds: List<int>.from(
              (json['user_ids'] ?? []).map((item) => item).toList()));

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowUsers';

  /// [userIds] The user identifiers, total number of users in all rules must not exceed 1000
  List<int> userIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }
}

/// A rule to allow all members of certain specified basic groups and supergroups to doing something
class UserPrivacySettingRuleAllowChatMembers extends UserPrivacySettingRule {
  UserPrivacySettingRuleAllowChatMembers({required this.chatIds});

  /// Parse from a json
  factory UserPrivacySettingRuleAllowChatMembers.fromJson(
          Map<String, dynamic> json) =>
      UserPrivacySettingRuleAllowChatMembers(
          chatIds: List<int>.from(
              (json['chat_ids'] ?? []).map((item) => item).toList()));

  static const CONSTRUCTOR = 'userPrivacySettingRuleAllowChatMembers';

  /// [chatIds] The chat identifiers, total number of chats in all rules must not exceed 20
  List<int> chatIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": chatIds.map((i) => i).toList(),
    };
  }
}

/// A rule to restrict all users from doing something
class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictAll();

  /// Parse from a json
  UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictAll';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A rule to restrict all contacts of a user from doing something
class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictContacts();

  /// Parse from a json
  UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictContacts';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A rule to restrict all specified users from doing something
class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictUsers({required this.userIds});

  /// Parse from a json
  factory UserPrivacySettingRuleRestrictUsers.fromJson(
          Map<String, dynamic> json) =>
      UserPrivacySettingRuleRestrictUsers(
          userIds: List<int>.from(
              (json['user_ids'] ?? []).map((item) => item).toList()));

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictUsers';

  /// [userIds] The user identifiers, total number of users in all rules must not exceed 1000
  List<int> userIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds.map((i) => i).toList(),
    };
  }
}

/// A rule to restrict all members of specified basic groups and supergroups from doing something
class UserPrivacySettingRuleRestrictChatMembers extends UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictChatMembers({required this.chatIds});

  /// Parse from a json
  factory UserPrivacySettingRuleRestrictChatMembers.fromJson(
          Map<String, dynamic> json) =>
      UserPrivacySettingRuleRestrictChatMembers(
          chatIds: List<int>.from(
              (json['chat_ids'] ?? []).map((item) => item).toList()));

  static const CONSTRUCTOR = 'userPrivacySettingRuleRestrictChatMembers';

  /// [chatIds] The chat identifiers, total number of chats in all rules must not exceed 20
  List<int> chatIds;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_ids": chatIds.map((i) => i).toList(),
    };
  }
}
