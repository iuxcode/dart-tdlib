part of '../index.dart';

/// Downloads a file from the cloud.
/// Download progress and completion of the download will be notified through updateFile updates
class DownloadFile extends TdFunction {
  DownloadFile({
    required this.fileId,
    required this.priority,
    this.offset = 0,
    this.limit = 0,
    this.synchronous = false,
  });

  static const CONSTRUCTOR = 'downloadFile';

  /// callback sign
  dynamic extra;

  /// [fileId] Identifier of the file to download
  int fileId;

  /// [limit] Number of bytes which should be downloaded starting from the "offset"
  /// position before the download will be automatically cancelled; use 0 to download without a limit
  int limit;

  /// [offset] The starting position from which the file should be downloaded
  int offset;

  /// [priority] Priority of the download (1-32).
  /// The higher the priority, the earlier the file will be downloaded.
  /// If the priorities of two files are equal,
  /// then the last one for which downloadFile was called will be downloaded first
  int priority;

  /// [synchronous] If false, this request returns file state just after the download has been started.
  /// If true, this request returns file state only after.
  /// the download has succeeded, has failed, has been cancelled or a new downloadFile request with different offset/limit parameters was sent
  bool synchronous;

  @override
  String getConstructor() => CONSTRUCTOR;

  /// Parse from a json
  // DownloadFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "priority": this.priority,
      "offset": this.offset,
      "limit": this.limit,
      "synchronous": this.synchronous,
      "@extra": this.extra,
    };
  }
}
