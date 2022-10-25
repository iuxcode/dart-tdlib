part of '../index.dart';

/// Contains information about an encrypted Telegram Passport element; for bots only
class EncryptedPassportElement extends TdObject {
  EncryptedPassportElement({
    required this.type,
    required this.data,
    required this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
    required this.files,
    required this.value,
    required this.hash,
  });

  /// Parse from a json
  factory EncryptedPassportElement.fromJson(Map<String, dynamic> json) =>
      EncryptedPassportElement(
        type: PassportElementType.fromJson(json['type']),
        data: json['data'],
        frontSide: DatedFile.fromJson(json['front_side']),
        reverseSide: DatedFile.fromJson(json['reverse_side']),
        selfie: DatedFile.fromJson(json['selfie']),
        translation: List<DatedFile>.from((json['translation'] ?? [])
            .map((item) => DatedFile.fromJson(item))
            .toList()),
        files: List<DatedFile>.from(
            (json['files'] ?? []).map((item) => DatedFile.fromJson(item)).toList()),
        value: json['value'],
        hash: json['hash'],
      );

  static const CONSTRUCTOR = 'encryptedPassportElement';

  /// [data] Encrypted JSON-encoded data about the user
  String data;

  /// [files] List of attached files
  List<DatedFile> files;

  /// [frontSide] The front side of an identity document
  DatedFile frontSide;

  /// [hash] Hash of the entire element
  String hash;

  /// [reverseSide] The reverse side of an identity document; may be null
  DatedFile? reverseSide;

  /// [selfie] Selfie with the document; may be null
  DatedFile? selfie;

  /// [translation] List of files containing a certified English translation of the document
  List<DatedFile> translation;

  /// [type] Type of Telegram Passport element
  PassportElementType type;

  /// [value] Unencrypted data, phone number or email address
  String value;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type.toJson(),
      "data": this.data,
      "front_side": this.frontSide.toJson(),
      "reverse_side": this.reverseSide?.toJson(),
      "selfie": this.selfie?.toJson(),
      "translation": this.translation.map((i) => i.toJson()).toList(),
      "files": this.files.map((i) => i.toJson()).toList(),
      "value": this.value,
      "hash": this.hash,
    };
  }
}
