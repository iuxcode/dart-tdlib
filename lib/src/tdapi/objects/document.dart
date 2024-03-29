part of '../index.dart';

/// Describes a document of any type
class Document extends TdObject {
  Document({
    required this.fileName,
    required this.mimeType,
    this.minithumbnail,
    this.thumbnail,
    required this.document,
  });

  /// Parse from a json
  factory Document.fromJson(Map<String, dynamic> json) => Document(
        fileName: json['file_name'],
        mimeType: json['mime_type'],
        minithumbnail: json['minithumbnail'] != null
            ? Minithumbnail.fromJson(json['minithumbnail'])
            : null,
        thumbnail: json['thumbnail'] != null
            ? Thumbnail.fromJson(json['thumbnail'])
            : null,
        document: File.fromJson(json['document']),
      );

  static const CONSTRUCTOR = 'document';

  /// [document] File containing the document
  File document;

  /// [fileName] Original name of the file; as defined by the sender
  String fileName;

  /// [mimeType] MIME type of the file; as defined by the sender
  String mimeType;

  /// [minithumbnail] Document minithumbnail; may be null
  Minithumbnail? minithumbnail;

  /// [thumbnail] Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null
  Thumbnail? thumbnail;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_name": this.fileName,
      "mime_type": this.mimeType,
      "minithumbnail":
          this.minithumbnail == null ? null : this.minithumbnail!.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail!.toJson(),
      "document": this.document.toJson(),
    };
  }
}
