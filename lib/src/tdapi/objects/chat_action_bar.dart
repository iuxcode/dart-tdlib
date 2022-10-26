part of '../index.dart';

/// Describes actions which should be possible to do through a chat action bar
/// a ChatActionBar return type can be :
/// * ChatActionBarReportSpam
/// * ChatActionBarReportUnrelatedLocation
/// * ChatActionBarReportAddBlock
/// * ChatActionBarAddContact
/// * ChatActionBarSharePhoneNumber
class ChatActionBar extends TdObject {
  ChatActionBar();

  factory ChatActionBar.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatActionBarReportSpam.CONSTRUCTOR:
        return ChatActionBarReportSpam.fromJson(json);
      case ChatActionBarReportUnrelatedLocation.CONSTRUCTOR:
        return ChatActionBarReportUnrelatedLocation.fromJson(json);
      case ChatActionBarReportAddBlock.CONSTRUCTOR:
        return ChatActionBarReportAddBlock.fromJson(json);
      case ChatActionBarAddContact.CONSTRUCTOR:
        return ChatActionBarAddContact.fromJson(json);
      case ChatActionBarSharePhoneNumber.CONSTRUCTOR:
        return ChatActionBarSharePhoneNumber.fromJson(json);
      default:
        return ChatActionBar();
    }
  }

  static const CONSTRUCTOR = 'chatActionBar';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// The chat can be reported as spam using the method reportChat with the reason chatReportReasonSpam
class ChatActionBarReportSpam extends ChatActionBar {
  ChatActionBarReportSpam({this.canUnarchive = false});

  /// Parse from a json
  factory ChatActionBarReportSpam.fromJson(Map<String, dynamic> json) =>
      ChatActionBarReportSpam(canUnarchive: json['can_unarchive']);

  static const CONSTRUCTOR = 'chatActionBarReportSpam';

  /// [canUnarchive] If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
  bool canUnarchive;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "can_unarchive": canUnarchive,
    };
  }
}

/// The chat is a location-based supergroup, which can be reported as having unrelated
/// location using the method reportChat with the reason chatReportReasonUnrelatedLocation
class ChatActionBarReportUnrelatedLocation extends ChatActionBar {
  ChatActionBarReportUnrelatedLocation();

  /// Parse from a json
  ChatActionBarReportUnrelatedLocation.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'chatActionBarReportUnrelatedLocation';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The chat is a private or secret chat, which can be reported using the method reportChat,
/// or the other user can be blocked using the method blockUser, or the other user can be added to the contact list using the method addContact
class ChatActionBarReportAddBlock extends ChatActionBar {
  ChatActionBarReportAddBlock(
      {this.canUnarchive = false, required this.distance});

  /// Parse from a json
  factory ChatActionBarReportAddBlock.fromJson(Map<String, dynamic> json) =>
      ChatActionBarReportAddBlock(
          canUnarchive: json['can_unarchive'], distance: json['distance']);

  static const CONSTRUCTOR = 'chatActionBarReportAddBlock';

  /// [canUnarchive] If true, the chat was automatically archived and can be moved back to the main chat list using addChatToList simultaneously with setting chat notification settings to default using setChatNotificationSettings
  bool canUnarchive;

  /// [distance] If non-negative, the current user was found by the peer through searchChatsNearby and this is the distance between the users
  int distance;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "can_unarchive": canUnarchive,
      "distance": distance,
    };
  }
}

/// The chat is a private or secret chat and the other user can be added to the contact list using the method addContact
class ChatActionBarAddContact extends ChatActionBar {
  ChatActionBarAddContact();

  /// Parse from a json
  ChatActionBarAddContact.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'chatActionBarAddContact';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The chat is a private or secret chat with a mutual contact and the user's phone number
/// can be shared with the other user using the method sharePhoneNumber
class ChatActionBarSharePhoneNumber extends ChatActionBar {
  ChatActionBarSharePhoneNumber();

  /// Parse from a json
  ChatActionBarSharePhoneNumber.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'chatActionBarSharePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
