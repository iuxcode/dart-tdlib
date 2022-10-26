// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Represents a vector path command
class VectorPathCommand extends TdObject {
  VectorPathCommand();

  /// a VectorPathCommand return type can be :
  /// * VectorPathCommandLine
  /// * VectorPathCommandCubicBezierCurve
  factory VectorPathCommand.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case VectorPathCommandLine.CONSTRUCTOR:
        return VectorPathCommandLine.fromJson(json);
      case VectorPathCommandCubicBezierCurve.CONSTRUCTOR:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      default:
        return VectorPathCommand();
    }
  }

  static const CONSTRUCTOR = 'vectorPathCommand';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A straight line to a given point
class VectorPathCommandLine extends VectorPathCommand {
  VectorPathCommandLine({required this.endPoint});

  /// Parse from a json
  factory VectorPathCommandLine.fromJson(Map<String, dynamic> json) =>
      VectorPathCommandLine(endPoint: Point.fromJson(json['end_point']));

  static const CONSTRUCTOR = 'vectorPathCommandLine';

  /// [endPoint] The end point of the straight line
  Point endPoint;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "end_point": endPoint.toJson(),
    };
  }
}

class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  /// A cubic B
  VectorPathCommandCubicBezierCurve();

  /// Parse from a json
  VectorPathCommandCubicBezierCurve.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'vectorPathCommandCubicBezierCurve';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
