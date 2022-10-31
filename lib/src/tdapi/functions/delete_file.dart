part of '../index.dart';

/// Deletes a file from the TDLib file cache
class DeleteFile extends TdFunction {
  DeleteFile({required this.fileId});

  /// Parse from a json
  // DeleteFile.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'deleteFile';

  /// callback sign
  dynamic extra;

  /// [fileId] Identifier of the file to delete
  int fileId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "@extra": this.extra,
    };
  }
}
