part of '../index.dart';

/// Contains encrypted Telegram Passport data credentials
class EncryptedCredentials extends TdObject {
  EncryptedCredentials({
    required this.data,
    required this.hash,
    required this.secret,
  });

  /// Parse from a json
  factory EncryptedCredentials.fromJson(Map<String, dynamic> json) =>
      EncryptedCredentials(
        data: json['data'],
        hash: json['hash'],
        secret: json['secret'],
      );

  static const CONSTRUCTOR = 'encryptedCredentials';

  /// [data] The encrypted credentials
  String data;

  /// [hash] The decrypted data hash
  String hash;

  /// [secret] Secret for data decryption, encrypted with the service's public key
  String secret;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": this.data,
      "hash": this.hash,
      "secret": this.secret,
    };
  }
}
