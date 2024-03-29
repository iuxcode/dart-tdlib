part of '../index.dart';

  /// Represents a remote file
class RemoteFile extends TdObject {
  RemoteFile(
      {this.id,
      this.uniqueId,
      this.isUploadingActive = false,
      this.isUploadingCompleted = false,
      this.uploadedSize = 0,});

  /// Parse from a json
  factory RemoteFile.fromJson(Map<String, dynamic> json) => RemoteFile(id : json['id'],
    uniqueId : json['unique_id'],
    isUploadingActive : json['is_uploading_active'],
    isUploadingCompleted : json['is_uploading_completed'],
    uploadedSize : json['uploaded_size'],);

  static const CONSTRUCTOR = 'remoteFile';

  /// [id] Remote file identifier; may be empty.
  /// Can be used by the current user across application restarts or even from other devices.
  /// Uniquely identifies a file, but a file can have a lot of different valid identifiers..
  /// If the remoteFile starts with "http://" or "https://", it represents the HTTP URL of the file.
  /// TDLib is currently unable to download files if only their URL is known..
  /// If downloadFile is called on such a file or if it is sent to a secret chat,
  /// TDLib starts a file generation process by sending updateFileGenerationStart
  /// to the application with the HTTP URL in the original_path and "#url#" as the conversion string.
  /// Application should generate the file by downloading it to the specified location
  String? id;

  /// [isUploadingActive] True, if the file is currently being uploaded (or a remote copy is being generated by some other means)
  bool isUploadingActive;

  /// [isUploadingCompleted] True, if a remote copy is fully available
  bool isUploadingCompleted;

  /// [uniqueId] Unique file identifier; may be empty if unknown.
  /// The unique file identifier which is the same for the same file even for different users and is persistent over time
  String? uniqueId;

  /// [uploadedSize] Size of the remote available part of the file; 0 if unknown
  int uploadedSize;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "unique_id": this.uniqueId,
      "is_uploading_active": this.isUploadingActive,
      "is_uploading_completed": this.isUploadingCompleted,
      "uploaded_size": this.uploadedSize,
    };
  }
}
