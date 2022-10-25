part of '../index.dart';

/// Describes a user contact
class Contact extends TdObject {
  Contact({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.vcard,
    this.userId = 0,
  });

  /// Parse from a json
  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        phoneNumber: json['phone_number'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        vcard: json['vcard'],
        userId: json['user_id'],
      );

  static const CONSTRUCTOR = 'contact';

  /// [firstName] First name of the user; 1-255 characters in length
  String firstName;

  /// [lastName] Last name of the user
  String lastName;

  /// [phoneNumber] Phone number of the user
  String phoneNumber;

  /// [userId] Identifier of the user, if known; otherwise 0
  int userId;

  /// [vcard] Additional data about the user in a form of vCard; 0-2048 bytes in length
  String vcard;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "first_name": this.firstName,
      "last_name": this.lastName,
      "vcard": this.vcard,
      "user_id": this.userId,
    };
  }
}
