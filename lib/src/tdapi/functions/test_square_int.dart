part of '../index.dart';

class TestSquareInt extends TdFunction {
  /// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization
  TestSquareInt({this.x});

  /// [x] Number to square
  int? x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  TestSquareInt.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testSquareInt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
