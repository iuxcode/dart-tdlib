part of '../index.dart';

/// Contains information about notification settings for a chat
class ChatNotificationSettings extends TdObject {
  ChatNotificationSettings({
    this.useDefaultMuteFor = false,
    required this.muteFor,
    this.useDefaultSound = false,
    this.sound,
    this.useDefaultShowPreview = false,
    this.showPreview = false,
    this.useDefaultDisablePinnedMessageNotifications = false,
    this.disablePinnedMessageNotifications = false,
    this.useDefaultDisableMentionNotifications = false,
    this.disableMentionNotifications = false,
  });

  /// Parse from a json
  factory ChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    return ChatNotificationSettings(
      useDefaultMuteFor: json['use_default_mute_for'],
      muteFor: json['mute_for'],
      useDefaultSound: json['use_default_sound'],
      sound: json['sound'],
      useDefaultShowPreview: json['use_default_show_preview'],
      showPreview: json['show_preview'],
      useDefaultDisablePinnedMessageNotifications:
          json['use_default_disable_pinned_message_notifications'],
      disablePinnedMessageNotifications:
          json['disable_pinned_message_notifications'],
      useDefaultDisableMentionNotifications:
          json['use_default_disable_mention_notifications'],
      disableMentionNotifications: json['disable_mention_notifications'],
    );
  }

  static const CONSTRUCTOR = 'chatNotificationSettings';

  /// [disableMentionNotifications] If true, notifications for messages with mentions will be created as for an ordinary unread message
  bool disableMentionNotifications;

  /// [disablePinnedMessageNotifications] If true, notifications for incoming pinned messages will be created as for an ordinary unread message
  bool disablePinnedMessageNotifications;

  /// [muteFor] Time left before notifications will be unmuted, in seconds
  int muteFor;

  /// [showPreview] True, if message content should be displayed in notifications
  bool showPreview;

  /// [sound] The name of an audio file to be used for notification sounds; only applies to iOS applications
  String? sound;

  /// [useDefaultDisableMentionNotifications] If true, disable_mention_notifications is ignored and the value for the relevant type of chat is used instead
  bool useDefaultDisableMentionNotifications;

  /// [useDefaultDisablePinnedMessageNotifications] If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat is used instead
  bool useDefaultDisablePinnedMessageNotifications;

  /// [useDefaultMuteFor] If true, mute_for is ignored and the value for the relevant type of chat is used instead
  bool useDefaultMuteFor;

  /// [useDefaultShowPreview] If true, show_preview is ignored and the value for the relevant type of chat is used instead
  bool useDefaultShowPreview;

  /// [useDefaultSound] If true, sound is ignored and the value for the relevant type of chat is used instead
  bool useDefaultSound;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "use_default_mute_for": useDefaultMuteFor,
      "mute_for": muteFor,
      "use_default_sound": useDefaultSound,
      "sound": sound,
      "use_default_show_preview": useDefaultShowPreview,
      "show_preview": showPreview,
      "use_default_disable_pinned_message_notifications":
          useDefaultDisablePinnedMessageNotifications,
      "disable_pinned_message_notifications": disablePinnedMessageNotifications,
      "use_default_disable_mention_notifications":
          useDefaultDisableMentionNotifications,
      "disable_mention_notifications": disableMentionNotifications,
    };
  }
}
