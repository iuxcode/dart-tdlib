// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Describes the last time the user was online
/// a UserStatus return type can be :
/// * UserStatusEmpty
/// * UserStatusOnline
/// * UserStatusOffline
/// * UserStatusRecently
/// * UserStatusLastWeek
/// * UserStatusLastMonth
class UserStatus extends TdObject {
  UserStatus();

  factory UserStatus.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserStatusEmpty.CONSTRUCTOR:
        return UserStatusEmpty.fromJson(json);
      case UserStatusOnline.CONSTRUCTOR:
        return UserStatusOnline.fromJson(json);
      case UserStatusOffline.CONSTRUCTOR:
        return UserStatusOffline.fromJson(json);
      case UserStatusRecently.CONSTRUCTOR:
        return UserStatusRecently.fromJson(json);
      case UserStatusLastWeek.CONSTRUCTOR:
        return UserStatusLastWeek.fromJson(json);
      case UserStatusLastMonth.CONSTRUCTOR:
        return UserStatusLastMonth.fromJson(json);
      default:
        return UserStatus();
    }
  }

  static const CONSTRUCTOR = 'userStatus';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// The user status was never changed
class UserStatusEmpty extends UserStatus {
  UserStatusEmpty();

  /// Parse from a json
  UserStatusEmpty.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userStatusEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The user is online
class UserStatusOnline extends UserStatus {
  UserStatusOnline({required this.expires});

  /// Parse from a json
  factory UserStatusOnline.fromJson(Map<String, dynamic> json) =>
      UserStatusOnline(expires: json['expires']);

  static const CONSTRUCTOR = 'userStatusOnline';

  /// [expires] Point in time (Unix timestamp) when the user's online status will expire
  int expires;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "expires": expires,
    };
  }
}

/// The user is offline
class UserStatusOffline extends UserStatus {
  UserStatusOffline({required this.wasOnline});

  /// Parse from a json
  factory UserStatusOffline.fromJson(Map<String, dynamic> json) =>
      UserStatusOffline(wasOnline: json['was_online']);

  static const CONSTRUCTOR = 'userStatusOffline';

  /// [wasOnline] Point in time (Unix timestamp) when the user was last online
  int wasOnline;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "was_online": this.wasOnline,
    };
  }
}

/// The user was online recently
class UserStatusRecently extends UserStatus {
  UserStatusRecently();

  /// Parse from a json
  UserStatusRecently.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userStatusRecently';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The user is offline, but was online last week
class UserStatusLastWeek extends UserStatus {
  UserStatusLastWeek();

  /// Parse from a json
  UserStatusLastWeek.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userStatusLastWeek';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The user is offline, but was online last month
class UserStatusLastMonth extends UserStatus {
  UserStatusLastMonth();

  /// Parse from a json
  UserStatusLastMonth.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'userStatusLastMonth';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
