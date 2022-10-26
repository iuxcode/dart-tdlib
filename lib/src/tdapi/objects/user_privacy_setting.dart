// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Describes available user privacy settings
/// a UserPrivacySetting return type can be :
/// * UserPrivacySettingShowStatus
/// * UserPrivacySettingShowProfilePhoto
/// * UserPrivacySettingShowLinkInForwardedMessages
/// * UserPrivacySettingShowPhoneNumber
/// * UserPrivacySettingAllowChatInvites
/// * UserPrivacySettingAllowCalls
/// * UserPrivacySettingAllowPeerToPeerCalls
/// * UserPrivacySettingAllowFindingByPhoneNumber
class UserPrivacySetting extends TdObject {
  UserPrivacySetting();

  factory UserPrivacySetting.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserPrivacySettingShowStatus.CONSTRUCTOR:
        return UserPrivacySettingShowStatus.fromJson(json);
      case UserPrivacySettingShowProfilePhoto.CONSTRUCTOR:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);
      case UserPrivacySettingShowLinkInForwardedMessages.CONSTRUCTOR:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);
      case UserPrivacySettingShowPhoneNumber.CONSTRUCTOR:
        return UserPrivacySettingShowPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowChatInvites.CONSTRUCTOR:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      case UserPrivacySettingAllowFindingByPhoneNumber.CONSTRUCTOR:
        return UserPrivacySettingAllowFindingByPhoneNumber.fromJson(json);
      default:
        return UserPrivacySetting();
    }
  }

  static const CONSTRUCTOR = 'userPrivacySetting';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A privacy setting for managing whether the user's online status is visible
class UserPrivacySettingShowStatus extends UserPrivacySetting {
  UserPrivacySettingShowStatus();

  /// Parse from a json
  UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingShowStatus';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A privacy setting for managing whether the user's profile photo is visible
class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  UserPrivacySettingShowProfilePhoto();

  /// Parse from a json
  UserPrivacySettingShowProfilePhoto.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingShowProfilePhoto';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A privacy setting for managing whether a link to the user's account is included in forwarded messages
class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {
  UserPrivacySettingShowLinkInForwardedMessages();

  /// Parse from a json
  UserPrivacySettingShowLinkInForwardedMessages.fromJson(
      Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingShowLinkInForwardedMessages';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A privacy setting for managing whether the user's phone number is visible
class UserPrivacySettingShowPhoneNumber extends UserPrivacySetting {
  UserPrivacySettingShowPhoneNumber();

  /// Parse from a json
  UserPrivacySettingShowPhoneNumber.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingShowPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A privacy setting for managing whether the user can be invited to chats
class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  UserPrivacySettingAllowChatInvites();

  /// Parse from a json
  UserPrivacySettingAllowChatInvites.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingAllowChatInvites';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A privacy setting for managing whether the user can be called
class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  UserPrivacySettingAllowCalls();

  /// Parse from a json
  UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingAllowCalls';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A privacy setting for managing whether peer-to-peer connections can be used for calls
class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  UserPrivacySettingAllowPeerToPeerCalls();

  /// Parse from a json
  UserPrivacySettingAllowPeerToPeerCalls.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingAllowPeerToPeerCalls';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A privacy setting for managing whether the user can be found by their phone number.
/// Checked only if the phone number is not known to the other user.
/// Can be set only to "Allow contacts" or "Allow all"
class UserPrivacySettingAllowFindingByPhoneNumber extends UserPrivacySetting {
  UserPrivacySettingAllowFindingByPhoneNumber();

  /// Parse from a json
  UserPrivacySettingAllowFindingByPhoneNumber.fromJson(
      Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userPrivacySettingAllowFindingByPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
