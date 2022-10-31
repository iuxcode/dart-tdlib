part of '../index.dart';

/// Returns file downloaded prefix size from a given offset
class GetFileDownloadedPrefixSize extends TdFunction {
  GetFileDownloadedPrefixSize({
    required this.fileId,
    required this.offset,
  });

  static const CONSTRUCTOR = 'getFileDownloadedPrefixSize';

  /// callback sign
  dynamic extra;

  /// [fileId] Identifier of the file
  int fileId;

  /// [offset] Offset from which downloaded prefix size should be calculated
  int offset;

  @override
  String getConstructor() => CONSTRUCTOR;

  /// Parse from a json
  // GetFileDownloadedPrefixSize.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "offset": this.offset,
      "@extra": this.extra,
    };
  }
}
