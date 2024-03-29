part of '../index.dart';

class RemoveFavoriteSticker extends TdFunction {
  /// Removes a sticker from the list of favorite stickers
  RemoveFavoriteSticker({this.sticker});

  /// [sticker] Sticker file to delete from the list
  InputFile? sticker;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RemoveFavoriteSticker.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker == null ? null : this.sticker!.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeFavoriteSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
