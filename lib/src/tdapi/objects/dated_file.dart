part of '../index.dart';

  /// File with the date it was uploaded
class DatedFile extends TdObject {
  DatedFile({required this.file, required this.date});

  /// Parse from a json
  factory DatedFile.fromJson(Map<String, dynamic> json) => DatedFile(
        file: File.fromJson(json['file']),
        date: json['date'],
      );

  static const CONSTRUCTOR = 'datedFile';

  /// [date] Point in time (Unix timestamp) when the file was uploaded
  int date;

  /// [file] The file
  File file;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file": this.file.toJson(),
      "date": this.date,
    };
  }
}
