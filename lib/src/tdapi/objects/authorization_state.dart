// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Represents the current authorization state of the TDLib client
/// a AuthorizationState return type can be :
/// * AuthorizationStateWaitTdlibParameters
/// * AuthorizationStateWaitEncryptionKey
/// * AuthorizationStateWaitPhoneNumber
/// * AuthorizationStateWaitCode
/// * AuthorizationStateWaitOtherDeviceConfirmation
/// * AuthorizationStateWaitRegistration
/// * AuthorizationStateWaitPassword
/// * AuthorizationStateReady
/// * AuthorizationStateLoggingOut
/// * AuthorizationStateClosing
/// * AuthorizationStateClosed
class AuthorizationState extends TdObject {
  AuthorizationState();

  factory AuthorizationState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case AuthorizationStateWaitTdlibParameters.CONSTRUCTOR:
        return AuthorizationStateWaitTdlibParameters.fromJson(json);
      case AuthorizationStateWaitEncryptionKey.CONSTRUCTOR:
        return AuthorizationStateWaitEncryptionKey.fromJson(json);
      case AuthorizationStateWaitPhoneNumber.CONSTRUCTOR:
        return AuthorizationStateWaitPhoneNumber.fromJson(json);
      case AuthorizationStateWaitCode.CONSTRUCTOR:
        return AuthorizationStateWaitCode.fromJson(json);
      case AuthorizationStateWaitOtherDeviceConfirmation.CONSTRUCTOR:
        return AuthorizationStateWaitOtherDeviceConfirmation.fromJson(json);
      case AuthorizationStateWaitRegistration.CONSTRUCTOR:
        return AuthorizationStateWaitRegistration.fromJson(json);
      case AuthorizationStateWaitPassword.CONSTRUCTOR:
        return AuthorizationStateWaitPassword.fromJson(json);
      case AuthorizationStateReady.CONSTRUCTOR:
        return AuthorizationStateReady.fromJson(json);
      case AuthorizationStateLoggingOut.CONSTRUCTOR:
        return AuthorizationStateLoggingOut.fromJson(json);
      case AuthorizationStateClosing.CONSTRUCTOR:
        return AuthorizationStateClosing.fromJson(json);
      case AuthorizationStateClosed.CONSTRUCTOR:
        return AuthorizationStateClosed.fromJson(json);
      default:
        return AuthorizationState();
    }
  }

  static const CONSTRUCTOR = 'authorizationState';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// TDLib needs TdlibParameters for initialization
class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  AuthorizationStateWaitTdlibParameters({this.extra});

  /// Parse from a json
  factory AuthorizationStateWaitTdlibParameters.fromJson(
          Map<String, dynamic> json) =>
      AuthorizationStateWaitTdlibParameters(extra: json['@extra']);

  static const CONSTRUCTOR = 'authorizationStateWaitTdlibParameters';

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// TDLib needs an encryption key to decrypt the local database
class AuthorizationStateWaitEncryptionKey extends AuthorizationState {
  AuthorizationStateWaitEncryptionKey({this.isEncrypted = false, this.extra});

  /// Parse from a json
  factory AuthorizationStateWaitEncryptionKey.fromJson(
          Map<String, dynamic> json) =>
      AuthorizationStateWaitEncryptionKey(
        isEncrypted: json['is_encrypted'],
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'authorizationStateWaitEncryptionKey';

  /// callback sign
  dynamic extra;

  /// [isEncrypted] True, if the database is currently encrypted
  bool isEncrypted;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_encrypted": isEncrypted,
    };
  }
}

/// TDLib needs the user's phone number to authorize. Call
class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  AuthorizationStateWaitPhoneNumber();

  /// Parse from a json
  AuthorizationStateWaitPhoneNumber.fromJson(Map<String, dynamic> json) {
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'authorizationStateWaitPhoneNumber';

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// TDLib needs the user's authentication code to authorize
class AuthorizationStateWaitCode extends AuthorizationState {
  AuthorizationStateWaitCode({required this.codeInfo, this.extra});

  /// Parse from a json
  factory AuthorizationStateWaitCode.fromJson(Map<String, dynamic> json) =>
      AuthorizationStateWaitCode(
          codeInfo: AuthenticationCodeInfo.fromJson(json['code_info']),
          extra: json['@extra']);

  static const CONSTRUCTOR = 'authorizationStateWaitCode';

  /// [codeInfo] Information about the authorization code that was sent
  AuthenticationCodeInfo codeInfo;

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "code_info": codeInfo.toJson(),
    };
  }
}

/// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link
class AuthorizationStateWaitOtherDeviceConfirmation extends AuthorizationState {
  AuthorizationStateWaitOtherDeviceConfirmation({
    required this.link,
    this.extra,
  });

  /// Parse from a json
  factory AuthorizationStateWaitOtherDeviceConfirmation.fromJson(
          Map<String, dynamic> json) =>
      AuthorizationStateWaitOtherDeviceConfirmation(
        link: json['link'],
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'authorizationStateWaitOtherDeviceConfirmation';

  /// callback sign
  dynamic extra;

  /// [link] A tg:// URL for the QR code. The link will be updated frequently
  String link;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
    };
  }
}

/// The user is unregistered and need to accept terms of service
/// and enter their first name and last name to finish registration
class AuthorizationStateWaitRegistration extends AuthorizationState {
  AuthorizationStateWaitRegistration({
    required this.termsOfService,
    this.extra,
  });

  /// Parse from a json
  factory AuthorizationStateWaitRegistration.fromJson(
          Map<String, dynamic> json) =>
      AuthorizationStateWaitRegistration(
        termsOfService: TermsOfService.fromJson(json['terms_of_service']),
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'authorizationStateWaitRegistration';

  /// callback sign
  dynamic extra;

  /// [termsOfService] Telegram terms of service
  TermsOfService termsOfService;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "terms_of_service": termsOfService.toJson(),
      "extra": extra,
    };
  }
}

/// The user has been authorized, but needs to enter a password to start using the application
class AuthorizationStateWaitPassword extends AuthorizationState {
  AuthorizationStateWaitPassword({
    this.passwordHint,
    this.hasRecoveryEmailAddress = false,
    this.recoveryEmailAddressPattern,
    this.extra,
  });

  /// Parse from a json
  factory AuthorizationStateWaitPassword.fromJson(Map<String, dynamic> json) =>
      AuthorizationStateWaitPassword(
        passwordHint: json['password_hint'],
        hasRecoveryEmailAddress: json['has_recovery_email_address'],
        recoveryEmailAddressPattern: json['recovery_email_address_pattern'],
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'authorizationStateWaitPassword';

  /// callback sign
  dynamic extra;

  /// [hasRecoveryEmailAddress] True, if a recovery email address has been set up
  bool hasRecoveryEmailAddress;

  /// [passwordHint] Hint for the password; may be empty
  String? passwordHint;

  /// [recoveryEmailAddressPattern] Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent
  String? recoveryEmailAddressPattern;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password_hint": passwordHint,
      "has_recovery_email_address": hasRecoveryEmailAddress,
      "recovery_email_address_pattern": recoveryEmailAddressPattern,
    };
  }
}

/// The user has been successfully authorized. TDLib is now ready to answer queries
class AuthorizationStateReady extends AuthorizationState {
  AuthorizationStateReady();

  /// Parse from a json
  AuthorizationStateReady.fromJson(Map<String, dynamic> json) {
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'authorizationStateReady';

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The user is currently logging out
class AuthorizationStateLoggingOut extends AuthorizationState {
  AuthorizationStateLoggingOut();

  /// Parse from a json
  AuthorizationStateLoggingOut.fromJson(Map<String, dynamic> json) {
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'authorizationStateLoggingOut';

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// TDLib is closing, all subsequent queries will be answered with the error 500.
/// Note that closing TDLib can take a while.
/// All resources will be freed only after authorizationStateClosed has been received
class AuthorizationStateClosing extends AuthorizationState {
  AuthorizationStateClosing();

  /// Parse from a json
  AuthorizationStateClosing.fromJson(Map<String, dynamic> json) {
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'authorizationStateClosing';

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// TDLib client is in its final state.
/// All databases are closed and all resources are released.
/// No other updates will be received after this. All queries will be responded to.
/// with error code 500. To continue working, one should create a new instance of the TDLib client
class AuthorizationStateClosed extends AuthorizationState {
  AuthorizationStateClosed();

  /// Parse from a json
  AuthorizationStateClosed.fromJson(Map<String, dynamic> json) {
    extra = json['@extra'];
  }

  static const CONSTRUCTOR = 'authorizationStateClosed';

  /// callback sign
  dynamic extra;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
