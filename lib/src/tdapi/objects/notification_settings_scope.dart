part of '../index.dart';

/// Describes the types of chats to which notification settings are applied
class NotificationSettingsScope extends TdObject {
  NotificationSettingsScope();

  /// a NotificationSettingsScope return type can be :
  /// * NotificationSettingsScopePrivateChats
  /// * NotificationSettingsScopeGroupChats
  /// * NotificationSettingsScopeChannelChats
  factory NotificationSettingsScope.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case NotificationSettingsScopePrivateChats.CONSTRUCTOR:
        return NotificationSettingsScopePrivateChats.fromJson(json);
      case NotificationSettingsScopeGroupChats.CONSTRUCTOR:
        return NotificationSettingsScopeGroupChats.fromJson(json);
      case NotificationSettingsScopeChannelChats.CONSTRUCTOR:
        return NotificationSettingsScopeChannelChats.fromJson(json);
      default:
        return NotificationSettingsScope();
    }
  }

  static const CONSTRUCTOR = 'notificationSettingsScope';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// Notification settings applied to all private and secret chats when the corresponding chat setting has a default value
class NotificationSettingsScopePrivateChats extends NotificationSettingsScope {
  NotificationSettingsScopePrivateChats();

  /// Parse from a json
  NotificationSettingsScopePrivateChats.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'notificationSettingsScopePrivateChats';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// Notification settings applied to all basic groups and supergroups when the corresponding chat setting has a default value
class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {
  NotificationSettingsScopeGroupChats();

  /// Parse from a json
  NotificationSettingsScopeGroupChats.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'notificationSettingsScopeGroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// Notification settings applied to all channels when the corresponding chat setting has a default value
class NotificationSettingsScopeChannelChats extends NotificationSettingsScope {
  NotificationSettingsScopeChannelChats();

  /// Parse from a json
  NotificationSettingsScopeChannelChats.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'notificationSettingsScopeChannelChats';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
