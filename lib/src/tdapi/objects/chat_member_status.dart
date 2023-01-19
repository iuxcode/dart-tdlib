part of '../index.dart';

/// Provides information about the status of a member in a chat
/// a ChatMemberStatus return type can be :
/// * ChatMemberStatusCreator
/// * ChatMemberStatusAdministrator
/// * ChatMemberStatusMember
/// * ChatMemberStatusRestricted
/// * ChatMemberStatusLeft
/// * ChatMemberStatusBanned
class ChatMemberStatus extends TdObject {
  ChatMemberStatus();

  factory ChatMemberStatus.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatMemberStatusCreator.CONSTRUCTOR:
        return ChatMemberStatusCreator.fromJson(json);
      case ChatMemberStatusAdministrator.CONSTRUCTOR:
        return ChatMemberStatusAdministrator.fromJson(json);
      case ChatMemberStatusMember.CONSTRUCTOR:
        return ChatMemberStatusMember.fromJson(json);
      case ChatMemberStatusRestricted.CONSTRUCTOR:
        return ChatMemberStatusRestricted.fromJson(json);
      case ChatMemberStatusLeft.CONSTRUCTOR:
        return ChatMemberStatusLeft.fromJson(json);
      case ChatMemberStatusBanned.CONSTRUCTOR:
        return ChatMemberStatusBanned.fromJson(json);
      default:
        return ChatMemberStatus();
    }
  }

  static const CONSTRUCTOR = 'chatMemberStatus';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// The user is the owner of a chat and has all the administrator privileges
class ChatMemberStatusCreator extends ChatMemberStatus {
  ChatMemberStatusCreator(
      {this.customTitle, this.isAnonymous = false, this.isMember = false});

  /// Parse from a json
  factory ChatMemberStatusCreator.fromJson(Map<String, dynamic> json) {
    return ChatMemberStatusCreator(
      customTitle: json['custom_title'],
      isAnonymous: json['is_anonymous'],
      isMember: json['is_member'],
    );
  }

  static const CONSTRUCTOR = 'chatMemberStatusCreator';

  /// [customTitle] A custom title of the owner; 0-16 characters without emojis;
  /// applicable to supergroups only
  String? customTitle;

  /// [isAnonymous] True, if the creator isn't shown in the chat member list and sends messages anonymously;
  /// applicable to supergroups only
  bool isAnonymous;

  /// [isMember] True, if the user is a member of the chat
  bool isMember;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "custom_title": this.customTitle,
      "is_anonymous": this.isAnonymous,
      "is_member": this.isMember,
    };
  }
}

/// The user is a member of a chat and has some additional privileges.
/// In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage voice chats.
/// In supergroups and channels, there are more detailed options for administrator privileges
class ChatMemberStatusAdministrator extends ChatMemberStatus {
  ChatMemberStatusAdministrator({
    this.customTitle,
    this.canBeEdited = false,
    this.canChangeInfo = false,
    this.canPostMessages = false,
    this.canEditMessages = false,
    this.canDeleteMessages = false,
    this.canInviteUsers = false,
    this.canRestrictMembers = false,
    this.canPinMessages = false,
    this.canPromoteMembers = false,
    this.canManageVoiceChats = false,
    this.isAnonymous = false,
  });

  /// Parse from a json
  factory ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json) {
    return ChatMemberStatusAdministrator(
      customTitle: json['custom_title'],
      canBeEdited: json['can_be_edited'] ?? false,
      canChangeInfo: json['can_change_info'] ?? false,
      canPostMessages: json['can_post_messages'] ?? false,
      canEditMessages: json['can_edit_messages'] ?? false,
      canDeleteMessages: json['can_delete_messages'] ?? false,
      canInviteUsers: json['can_invite_users'] ?? false,
      canRestrictMembers: json['can_restrict_members'] ?? false,
      canPinMessages: json['can_pin_messages'] ?? false,
      canPromoteMembers: json['can_promote_members'] ?? false,
      canManageVoiceChats: json['can_manage_voice_chats'] ?? false,
      isAnonymous: json['is_anonymous'] ?? false,
    );
  }

  static const CONSTRUCTOR = 'chatMemberStatusAdministrator';

  /// [canBeEdited] True, if the current user can edit the administrator privileges for the called user
  bool canBeEdited;

  /// [canChangeInfo] True, if the administrator can change the chat title, photo, and other settings
  bool canChangeInfo;

  /// [canDeleteMessages] True, if the administrator can delete messages of other users
  bool canDeleteMessages;

  /// [canEditMessages] True, if the administrator can edit messages of other users and pin messages; applicable to channels only
  bool canEditMessages;

  /// [canInviteUsers] True, if the administrator can invite new users to the chat
  bool canInviteUsers;

  /// [canManageVoiceChats] True, if the administrator can manage voice chats; applicable to groups only
  bool canManageVoiceChats;

  /// [canPinMessages] True, if the administrator can pin messages; applicable to groups only
  bool canPinMessages;

  /// [canPostMessages] True, if the administrator can create channel posts; applicable to channels only
  bool canPostMessages;

  /// [canPromoteMembers] True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them
  bool canPromoteMembers;

  /// [canRestrictMembers] True, if the administrator can restrict, ban, or unban chat members
  bool canRestrictMembers;

  /// [customTitle] A custom title of the administrator; 0-16 characters without emojis;
  /// applicable to supergroups only
  String? customTitle;

  /// [isAnonymous] True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only
  bool isAnonymous;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "custom_title": this.customTitle,
      "can_be_edited": this.canBeEdited,
      "can_change_info": this.canChangeInfo,
      "can_post_messages": this.canPostMessages,
      "can_edit_messages": this.canEditMessages,
      "can_delete_messages": this.canDeleteMessages,
      "can_invite_users": this.canInviteUsers,
      "can_restrict_members": this.canRestrictMembers,
      "can_pin_messages": this.canPinMessages,
      "can_promote_members": this.canPromoteMembers,
      "can_manage_voice_chats": this.canManageVoiceChats,
      "is_anonymous": this.isAnonymous,
    };
  }
}

/// The user is a member of a chat, without any additional privileges or restrictions
class ChatMemberStatusMember extends ChatMemberStatus {
  ChatMemberStatusMember();

  /// Parse from a json
  ChatMemberStatusMember.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'chatMemberStatusMember';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The user is under certain restrictions in the chat. Not supported in basic groups and channels
class ChatMemberStatusRestricted extends ChatMemberStatus {
  ChatMemberStatusRestricted(
      {this.isMember = false,
      this.restrictedUntilDate = 0,
      required this.permissions});

  /// Parse from a json
  factory ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json) {
    return ChatMemberStatusRestricted(
      isMember: json['is_member'],
      restrictedUntilDate: json['restricted_until_date'],
      permissions: ChatPermissions.fromJson(json['permissions']),
    );
  }

  static const CONSTRUCTOR = 'chatMemberStatusRestricted';

  /// [isMember] True, if the user is a member of the chat
  bool isMember;

  /// [permissions] User permissions in the chat
  ChatPermissions permissions;

  /// [restrictedUntilDate] Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever
  int restrictedUntilDate;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_member": this.isMember,
      "restricted_until_date": this.restrictedUntilDate,
      "permissions": this.permissions.toJson(),
    };
  }
}

/// The user is not a chat member
class ChatMemberStatusLeft extends ChatMemberStatus {
  ChatMemberStatusLeft();

  /// Parse from a json
  ChatMemberStatusLeft.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'chatMemberStatusLeft';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The user was banned (and hence is not a member of the chat).
/// Implies the user can't return to the chat or view messages
class ChatMemberStatusBanned extends ChatMemberStatus {
  ChatMemberStatusBanned({this.bannedUntilDate = 0});

  /// Parse from a json
  factory ChatMemberStatusBanned.fromJson(Map<String, dynamic> json) {
    return ChatMemberStatusBanned(bannedUntilDate: json['banned_until_date']);
  }

  static const CONSTRUCTOR = 'chatMemberStatusBanned';

  /// [bannedUntilDate] Point in time (Unix timestamp) when the user will be unbanned;
  /// 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time,
  /// the user is considered to be banned forever
  int? bannedUntilDate;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "banned_until_date": this.bannedUntilDate,
    };
  }
}
