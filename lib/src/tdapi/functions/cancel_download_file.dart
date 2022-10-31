part of '../index.dart';

/// Stops the downloading of a file. If a file has already been downloaded, does nothing
class CancelDownloadFile extends TdFunction {
  CancelDownloadFile({
    required this.fileId,
    this.onlyIfPending = false,
  });

  /// Parse from a json
  // CancelDownloadFile.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'cancelDownloadFile';

  /// callback sign
  dynamic extra;

  /// [fileId] Identifier of a file to stop downloading
  int fileId;

  /// [onlyIfPending] Pass true to stop downloading only if it hasn't been started,
  /// i.e. request hasn't been sent to server
  bool onlyIfPending;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "only_if_pending": this.onlyIfPending,
      "@extra": this.extra,
    };
  }
}
