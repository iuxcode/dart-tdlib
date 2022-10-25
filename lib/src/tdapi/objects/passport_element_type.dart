part of '../index.dart';

/// Contains the type of a Telegram Passport element
class PassportElementType extends TdObject {
  PassportElementType();

  /// a PassportElementType return type can be :
  /// * PassportElementTypePersonalDetails
  /// * PassportElementTypePassport
  /// * PassportElementTypeDriverLicense
  /// * PassportElementTypeIdentityCard
  /// * PassportElementTypeInternalPassport
  /// * PassportElementTypeAddress
  /// * PassportElementTypeUtilityBill
  /// * PassportElementTypeBankStatement
  /// * PassportElementTypeRentalAgreement
  /// * PassportElementTypePassportRegistration
  /// * PassportElementTypeTemporaryRegistration
  /// * PassportElementTypePhoneNumber
  /// * PassportElementTypeEmailAddress
  factory PassportElementType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PassportElementTypePersonalDetails.CONSTRUCTOR:
        return PassportElementTypePersonalDetails.fromJson(json);
      case PassportElementTypePassport.CONSTRUCTOR:
        return PassportElementTypePassport.fromJson(json);
      case PassportElementTypeDriverLicense.CONSTRUCTOR:
        return PassportElementTypeDriverLicense.fromJson(json);
      case PassportElementTypeIdentityCard.CONSTRUCTOR:
        return PassportElementTypeIdentityCard.fromJson(json);
      case PassportElementTypeInternalPassport.CONSTRUCTOR:
        return PassportElementTypeInternalPassport.fromJson(json);
      case PassportElementTypeAddress.CONSTRUCTOR:
        return PassportElementTypeAddress.fromJson(json);
      case PassportElementTypeUtilityBill.CONSTRUCTOR:
        return PassportElementTypeUtilityBill.fromJson(json);
      case PassportElementTypeBankStatement.CONSTRUCTOR:
        return PassportElementTypeBankStatement.fromJson(json);
      case PassportElementTypeRentalAgreement.CONSTRUCTOR:
        return PassportElementTypeRentalAgreement.fromJson(json);
      case PassportElementTypePassportRegistration.CONSTRUCTOR:
        return PassportElementTypePassportRegistration.fromJson(json);
      case PassportElementTypeTemporaryRegistration.CONSTRUCTOR:
        return PassportElementTypeTemporaryRegistration.fromJson(json);
      case PassportElementTypePhoneNumber.CONSTRUCTOR:
        return PassportElementTypePhoneNumber.fromJson(json);
      case PassportElementTypeEmailAddress.CONSTRUCTOR:
        return PassportElementTypeEmailAddress.fromJson(json);
      default:
        return PassportElementType();
    }
  }

  static const CONSTRUCTOR = 'passportElementType';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A Telegram Passport element containing the user's personal details
class PassportElementTypePersonalDetails extends PassportElementType {
  PassportElementTypePersonalDetails();

  /// Parse from a json
  PassportElementTypePersonalDetails.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypePersonalDetails';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's passport
class PassportElementTypePassport extends PassportElementType {
  PassportElementTypePassport();

  /// Parse from a json
  PassportElementTypePassport.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypePassport';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's driver license
class PassportElementTypeDriverLicense extends PassportElementType {
  PassportElementTypeDriverLicense();

  /// Parse from a json
  PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypeDriverLicense';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's identity card
class PassportElementTypeIdentityCard extends PassportElementType {
  PassportElementTypeIdentityCard();

  /// Parse from a json
  PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypeIdentityCard';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's internal passport
class PassportElementTypeInternalPassport extends PassportElementType {
  PassportElementTypeInternalPassport();

  /// Parse from a json
  PassportElementTypeInternalPassport.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypeInternalPassport';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's address
class PassportElementTypeAddress extends PassportElementType {
  PassportElementTypeAddress();

  /// Parse from a json
  PassportElementTypeAddress.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypeAddress';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's utility bill
class PassportElementTypeUtilityBill extends PassportElementType {
  PassportElementTypeUtilityBill();

  /// Parse from a json
  PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypeUtilityBill';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's bank statement
class PassportElementTypeBankStatement extends PassportElementType {
  PassportElementTypeBankStatement();

  /// Parse from a json
  PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypeBankStatement';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's rental agreement
class PassportElementTypeRentalAgreement extends PassportElementType {
  PassportElementTypeRentalAgreement();

  /// Parse from a json
  PassportElementTypeRentalAgreement.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypeRentalAgreement';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the registration page of the user's passport
class PassportElementTypePassportRegistration extends PassportElementType {
  PassportElementTypePassportRegistration();

  /// Parse from a json
  PassportElementTypePassportRegistration.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypePassportRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's temporary registration
class PassportElementTypeTemporaryRegistration extends PassportElementType {
  PassportElementTypeTemporaryRegistration();

  /// Parse from a json
  PassportElementTypeTemporaryRegistration.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypeTemporaryRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's phone number
class PassportElementTypePhoneNumber extends PassportElementType {
  PassportElementTypePhoneNumber();

  /// Parse from a json
  PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A Telegram Passport element containing the user's email address
class PassportElementTypeEmailAddress extends PassportElementType {
  PassportElementTypeEmailAddress();

  /// Parse from a json
  PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'passportElementTypeEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
