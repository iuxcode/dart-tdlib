part of '../index.dart';

/// A point on a Cartesian plane
class Point extends TdObject {
  Point({
    required this.x,
    required this.y,
  });

  /// Parse from a json
  factory Point.fromJson(Map<String, dynamic> json) => Point(
        x: json['x'],
        y: json['y'],
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'point';

  /// [x] The point's first coordinate
  double x;

  /// [y] The point's second coordinate
  double y;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": x,
      "y": y,
    };
  }
}
