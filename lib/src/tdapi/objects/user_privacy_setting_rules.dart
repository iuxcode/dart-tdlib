part of '../index.dart';

/// A list of privacy rules. Rules are matched in the specified order.
/// The first matched rule defines the privacy setting for a given user.
/// If no rule matches, the action is not allowed
class UserPrivacySettingRules extends TdObject {
  UserPrivacySettingRules({required this.rules, this.extra});

  /// Parse from a json
  factory UserPrivacySettingRules.fromJson(Map<String, dynamic> json) =>
      UserPrivacySettingRules(
        rules: List<UserPrivacySettingRule>.from((json['rules'] ?? [])
            .map((item) => UserPrivacySettingRule.fromJson(item))
            .toList()),
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'userPrivacySettingRules';

  /// callback sign
  dynamic extra;

  /// [rules] A list of rules
  List<UserPrivacySettingRule> rules;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rules": this.rules.map((i) => i.toJson()).toList(),
    };
  }
}
