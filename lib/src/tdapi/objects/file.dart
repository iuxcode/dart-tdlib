part of '../index.dart';

/// Represents a file
class File extends TdObject {
  File({
    required this.id,
    this.size = 0,
    required this.expectedSize,
    required this.local,
    required this.remote,
    this.extra,
  });

  /// Parse from a json
  factory File.fromJson(Map<String, dynamic> json) => File(
        id: json['id'],
        size: json['size'],
        expectedSize: json['expected_size'],
        local: LocalFile.fromJson(json['local'] ?? <String, dynamic>{}),
        remote: RemoteFile.fromJson(json['remote'] ?? <String, dynamic>{}),
        extra: json['@extra'],
      );

  static const CONSTRUCTOR = 'file';

  /// [expectedSize] Expected file size in case the exact file size is unknown, but an approximate size is known.
  /// Can be used to show download/upload progress
  int expectedSize;

  /// callback sign
  dynamic extra;

  /// [id] Unique file identifier
  int id;

  /// [local] Information about the local copy of the file
  LocalFile local;

  /// [remote] Information about the remote copy of the file
  RemoteFile remote;

  /// [size] File size; 0 if unknown
  int size;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "size": this.size,
      "expected_size": this.expectedSize,
      "local": this.local.toJson(),
      "remote": this.remote.toJson(),
    };
  }
}
