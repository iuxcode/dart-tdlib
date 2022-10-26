part of '../index.dart';

/// Contains full information about a user
class UserFullInfo extends TdObject {
  UserFullInfo({
    this.photo,
    this.isBlocked = false,
    this.canBeCalled = false,
    this.supportsVideoCalls = false,
    this.hasPrivateCalls = false,
    this.needPhoneNumberPrivacyException = false,
    required this.bio,
    this.shareText,
    this.groupInCommonCount = 0,
    this.botInfo,
    this.extra,
  });

  /// Parse from a json
  factory UserFullInfo.fromJson(Map<String, dynamic> json) => UserFullInfo(
        photo: json['photo'] != null ? ChatPhoto.fromJson(json['photo']) : null,
        isBlocked: json['is_blocked'],
        canBeCalled: json['can_be_called'],
        supportsVideoCalls: json['supports_video_calls'],
        hasPrivateCalls: json['has_private_calls'],
        needPhoneNumberPrivacyException:
            json['need_phone_number_privacy_exception'],
        bio: FormattedText.fromJson(json['bio']),
        shareText: json['share_text'],
        groupInCommonCount: json['group_in_common_count'],
        botInfo: json['bot_info'] != null
            ? BotInfo.fromJson(json['bot_info'])
            : null,
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'userFullInfo';

  /// [bio] A short user bio
  FormattedText bio;

  /// [botInfo] If the user is a bot, information about the bot; may be null
  BotInfo? botInfo;

  /// [canBeCalled] True, if the user can be called
  bool canBeCalled;

  /// callback sign
  dynamic extra;

  /// [groupInCommonCount] Number of group chats where both the other user and the current user are a member;
  /// 0 for the current user
  int groupInCommonCount;

  /// [hasPrivateCalls] True, if the user can't be called due to their privacy settings
  bool hasPrivateCalls;

  /// [isBlocked] True, if the user is blocked by the current user
  bool isBlocked;

  /// [needPhoneNumberPrivacyException] True, if the current user needs to explicitly allow to share their phone number with the user when the method addContact is used
  bool needPhoneNumberPrivacyException;

  /// [photo] User profile photo; may be null
  ChatPhoto? photo;

  /// [shareText] For bots, the text that is included with the link when users share the bot
  String? shareText;

  /// [supportsVideoCalls] True, if a video call can be created with the user
  bool supportsVideoCalls;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": photo?.toJson(),
      "is_blocked": isBlocked,
      "can_be_called": canBeCalled,
      "supports_video_calls": supportsVideoCalls,
      "has_private_calls": hasPrivateCalls,
      "need_phone_number_privacy_exception": needPhoneNumberPrivacyException,
      "bio": bio,
      "share_text": shareText,
      "group_in_common_count": groupInCommonCount,
      "bot_info": botInfo?.toJson(),
    };
  }
}
