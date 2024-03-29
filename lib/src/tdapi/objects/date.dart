part of '../index.dart';

class Date extends TdObject {
  /// Represents a date according to the Gregorian calendar
  Date({this.day, this.month, this.year});

  /// [day] Day of the month, 1-31
  int? day;

  /// [month] Month, 1-12
  int? month;

  /// [year] Year, 1-9999
  int? year;

  /// Parse from a json
  Date.fromJson(Map<String, dynamic> json) {
    this.day = json['day'];
    this.month = json['month'];
    this.year = json['year'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "day": this.day,
      "month": this.month,
      "year": this.year,
    };
  }

  static const CONSTRUCTOR = 'date';

  @override
  String getConstructor() => CONSTRUCTOR;
}
