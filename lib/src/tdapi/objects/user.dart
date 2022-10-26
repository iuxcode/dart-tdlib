part of '../index.dart';

/// Represents a user
class User extends TdObject {
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.phoneNumber,
    required this.status,
    this.profilePhoto,
    this.isContact = false,
    this.isMutualContact = false,
    this.isVerified = false,
    this.isSupport = false,
    this.restrictionReason,
    this.isScam = false,
    this.haveAccess = false,
    required this.type,
    this.languageCode,
    this.extra,
  });

  /// Parse from a json
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        username: json['username'],
        phoneNumber: json['phone_number'],
        status: UserStatus.fromJson(json['status']),
        profilePhoto: ProfilePhoto.fromJson(json['profile_photo']),
        isContact: json['is_contact'],
        isMutualContact: json['is_mutual_contact'],
        isVerified: json['is_verified'],
        isSupport: json['is_support'],
        restrictionReason: json['restriction_reason'],
        isScam: json['is_scam'],
        haveAccess: json['have_access'],
        type: UserType.fromJson(json['type']),
        languageCode: json['language_code'],
        extra: json['@extra'],
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'user';

  /// callback sign
  dynamic extra;

  /// [firstName] First name of the user
  String firstName;

  /// [haveAccess] If false, the user is inaccessible, and the only information known about the user is inside this class. It can't be passed to any method except GetUser
  bool haveAccess;

  /// [id] User identifier
  int id;

  /// [isContact] The user is a contact of the current user
  bool isContact;

  /// [isMutualContact] The user is a contact of the current user and the current user is a contact of the user
  bool isMutualContact;

  /// [isScam] True, if many users reported this user as a scam
  bool isScam;

  /// [isSupport] True, if the user is Telegram support account
  bool isSupport;

  /// [isVerified] True, if the user is verified
  bool isVerified;

  /// [languageCode] IETF language tag of the user's language;
  /// only available to bots
  String? languageCode;

  /// [lastName] Last name of the user
  String lastName;

  /// [phoneNumber] Phone number of the user
  String phoneNumber;

  /// [profilePhoto] Profile photo of the user; may be null
  ProfilePhoto? profilePhoto;

  /// [restrictionReason] If non-empty, it contains a human-readable description of the reason why access to this user must be restricted
  String? restrictionReason;

  /// [status] Current online status of the user
  UserStatus status;

  /// [type] Type of the user
  UserType type;

  /// [username] Username of the user
  String username;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "first_name": firstName,
      "last_name": lastName,
      "username": username,
      "phone_number": phoneNumber,
      "status": status.toJson(),
      "profile_photo": profilePhoto?.toJson(),
      "is_contact": isContact,
      "is_mutual_contact": isMutualContact,
      "is_verified": isVerified,
      "is_support": isSupport,
      "restriction_reason": restrictionReason,
      "is_scam": isScam,
      "have_access": haveAccess,
      "type": type.toJson(),
      "language_code": languageCode,
    };
  }
}
