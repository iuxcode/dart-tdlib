part of '../index.dart';

/// Contains animated stickers which should be used for dice animation rendering
class DiceStickers extends TdObject {
  DiceStickers();

  /// a DiceStickers return type can be :
  /// * DiceStickersRegular
  /// * DiceStickersSlotMachine
  factory DiceStickers.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case DiceStickersRegular.CONSTRUCTOR:
        return DiceStickersRegular.fromJson(json);
      case DiceStickersSlotMachine.CONSTRUCTOR:
        return DiceStickersSlotMachine.fromJson(json);
      default:
        return DiceStickers();
    }
  }

  static const CONSTRUCTOR = 'diceStickers';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A regular animated sticker
class DiceStickersRegular extends DiceStickers {
  DiceStickersRegular({required this.sticker});

  /// Parse from a json
  factory DiceStickersRegular.fromJson(Map<String, dynamic> json) =>
      DiceStickersRegular(sticker: Sticker.fromJson(json['sticker']));

  static const CONSTRUCTOR = 'diceStickersRegular';

  /// [sticker] The animated sticker with the dice animation
  Sticker sticker;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
    };
  }
}

/// Animated stickers to be combined into a slot machine
class DiceStickersSlotMachine extends DiceStickers {
  DiceStickersSlotMachine({
    required this.background,
    required this.lever,
    required this.leftReel,
    required this.centerReel,
    required this.rightReel,
  });

  /// Parse from a json
  factory DiceStickersSlotMachine.fromJson(Map<String, dynamic> json) =>
      DiceStickersSlotMachine(
        background: Sticker.fromJson(json['background'] ?? <String, dynamic>{}),
        lever: Sticker.fromJson(json['lever'] ?? <String, dynamic>{}),
        leftReel: Sticker.fromJson(json['left_reel'] ?? <String, dynamic>{}),
        centerReel: Sticker.fromJson(json['center_reel'] ?? <String, dynamic>{}),
        rightReel: Sticker.fromJson(json['right_reel'] ?? <String, dynamic>{}),
      );

  static const CONSTRUCTOR = 'diceStickersSlotMachine';

  /// [background] The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish
  Sticker background;

  /// [centerReel] The animated sticker with the center reel
  Sticker centerReel;

  /// [leftReel] The animated sticker with the left reel
  Sticker leftReel;

  /// [lever] The animated sticker with the lever animation. The lever animation must play once in the initial dice state
  Sticker lever;

  /// [rightReel] The animated sticker with the right reel
  Sticker rightReel;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "background": this.background.toJson(),
      "lever": this.lever.toJson(),
      "left_reel": this.leftReel.toJson(),
      "center_reel": this.centerReel.toJson(),
      "right_reel": this.rightReel.toJson(),
    };
  }
}
