part of 'index.dart';

abstract class TdObject {
  TdObject();

  TdObject.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'object';

  Map<String, dynamic> toJson();

  String getConstructor() => CONSTRUCTOR;
}
