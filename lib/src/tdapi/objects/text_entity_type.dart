part of '../index.dart';

/// Represents a part of the text which must be formatted differently
class TextEntityType extends TdObject {
  TextEntityType();

  /// a TextEntityType return type can be :
  /// * TextEntityTypeMention
  /// * TextEntityTypeHashtag
  /// * TextEntityTypeCashtag
  /// * TextEntityTypeBotCommand
  /// * TextEntityTypeUrl
  /// * TextEntityTypeEmailAddress
  /// * TextEntityTypePhoneNumber
  /// * TextEntityTypeBankCardNumber
  /// * TextEntityTypeBold
  /// * TextEntityTypeItalic
  /// * TextEntityTypeUnderline
  /// * TextEntityTypeStrikethrough
  /// * TextEntityTypeCode
  /// * TextEntityTypePre
  /// * TextEntityTypePreCode
  /// * TextEntityTypeTextUrl
  /// * TextEntityTypeMentionName
  factory TextEntityType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case TextEntityTypeMention.CONSTRUCTOR:
        return TextEntityTypeMention.fromJson(json);
      case TextEntityTypeHashtag.CONSTRUCTOR:
        return TextEntityTypeHashtag.fromJson(json);
      case TextEntityTypeCashtag.CONSTRUCTOR:
        return TextEntityTypeCashtag.fromJson(json);
      case TextEntityTypeBotCommand.CONSTRUCTOR:
        return TextEntityTypeBotCommand.fromJson(json);
      case TextEntityTypeUrl.CONSTRUCTOR:
        return TextEntityTypeUrl.fromJson(json);
      case TextEntityTypeEmailAddress.CONSTRUCTOR:
        return TextEntityTypeEmailAddress.fromJson(json);
      case TextEntityTypePhoneNumber.CONSTRUCTOR:
        return TextEntityTypePhoneNumber.fromJson(json);
      case TextEntityTypeBankCardNumber.CONSTRUCTOR:
        return TextEntityTypeBankCardNumber.fromJson(json);
      case TextEntityTypeBold.CONSTRUCTOR:
        return TextEntityTypeBold.fromJson(json);
      case TextEntityTypeItalic.CONSTRUCTOR:
        return TextEntityTypeItalic.fromJson(json);
      case TextEntityTypeUnderline.CONSTRUCTOR:
        return TextEntityTypeUnderline.fromJson(json);
      case TextEntityTypeStrikethrough.CONSTRUCTOR:
        return TextEntityTypeStrikethrough.fromJson(json);
      case TextEntityTypeCode.CONSTRUCTOR:
        return TextEntityTypeCode.fromJson(json);
      case TextEntityTypePre.CONSTRUCTOR:
        return TextEntityTypePre.fromJson(json);
      case TextEntityTypePreCode.CONSTRUCTOR:
        return TextEntityTypePreCode.fromJson(json);
      case TextEntityTypeTextUrl.CONSTRUCTOR:
        return TextEntityTypeTextUrl.fromJson(json);
      case TextEntityTypeMentionName.CONSTRUCTOR:
        return TextEntityTypeMentionName.fromJson(json);
      default:
        return TextEntityType();
    }
  }

  static const CONSTRUCTOR = 'textEntityType';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// A mention of a user by their username
class TextEntityTypeMention extends TextEntityType {
  TextEntityTypeMention();

  /// Parse from a json
  TextEntityTypeMention.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeMention';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A hashtag text, beginning with "#"
class TextEntityTypeHashtag extends TextEntityType {
  TextEntityTypeHashtag();

  /// Parse from a json
  TextEntityTypeHashtag.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeHashtag';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A cashtag text, beginning with "$" and consisting of capital english letters (i.e. "$USD")
class TextEntityTypeCashtag extends TextEntityType {
  TextEntityTypeCashtag();

  /// Parse from a json
  TextEntityTypeCashtag.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeCashtag';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A bot command, beginning with "/". This shouldn't be highlighted if there are no bots in the chat
class TextEntityTypeBotCommand extends TextEntityType {
  TextEntityTypeBotCommand();

  /// Parse from a json
  TextEntityTypeBotCommand.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeBotCommand';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// An HTTP URL
class TextEntityTypeUrl extends TextEntityType {
  TextEntityTypeUrl();

  /// Parse from a json
  TextEntityTypeUrl.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeUrl';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// An email address
class TextEntityTypeEmailAddress extends TextEntityType {
  TextEntityTypeEmailAddress();

  /// Parse from a json
  TextEntityTypeEmailAddress.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A phone number
class TextEntityTypePhoneNumber extends TextEntityType {
  TextEntityTypePhoneNumber();

  /// Parse from a json
  TextEntityTypePhoneNumber.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A bank card number. The getBankCardInfo method can be used to get information about the bank card
class TextEntityTypeBankCardNumber extends TextEntityType {
  TextEntityTypeBankCardNumber();

  /// Parse from a json
  TextEntityTypeBankCardNumber.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeBankCardNumber';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A bold text

class TextEntityTypeBold extends TextEntityType {
  TextEntityTypeBold();

  /// Parse from a json
  TextEntityTypeBold.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeBold';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// An italic text
class TextEntityTypeItalic extends TextEntityType {
  TextEntityTypeItalic();

  /// Parse from a json
  TextEntityTypeItalic.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeItalic';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// An underlined text
class TextEntityTypeUnderline extends TextEntityType {
  TextEntityTypeUnderline();

  /// Parse from a json
  TextEntityTypeUnderline.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeUnderline';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// A strikethrough text
class TextEntityTypeStrikethrough extends TextEntityType {
  TextEntityTypeStrikethrough();

  /// Parse from a json
  TextEntityTypeStrikethrough.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeStrikethrough';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// Text that must be formatted as if inside a code HTML tag
class TextEntityTypeCode extends TextEntityType {
  TextEntityTypeCode();

  /// Parse from a json
  TextEntityTypeCode.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypeCode';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// Text that must be formatted as if inside a pre HTML tag
class TextEntityTypePre extends TextEntityType {
  TextEntityTypePre();

  /// Parse from a json
  TextEntityTypePre.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'textEntityTypePre';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// Text that must be formatted as if inside pre, and code HTML tags
class TextEntityTypePreCode extends TextEntityType {
  TextEntityTypePreCode({this.language});

  /// Parse from a json
  TextEntityTypePreCode.fromJson(Map<String, dynamic> json) {
    this.language = json['language'];
  }

  static const CONSTRUCTOR = 'textEntityTypePreCode';

  /// [language] Programming language of the code; as defined by the sender
  String? language;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language": this.language,
    };
  }
}

class TextEntityTypeTextUrl extends TextEntityType {
  /// A text description shown instead of a raw URL
  TextEntityTypeTextUrl({this.url});

  /// Parse from a json
  TextEntityTypeTextUrl.fromJson(Map<String, dynamic> json) {
    this.url = json['url'];
  }

  static const CONSTRUCTOR = 'textEntityTypeTextUrl';

  /// [url] HTTP or tg:// URL to be opened when the link is clicked
  String? url;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
    };
  }
}

class TextEntityTypeMentionName extends TextEntityType {
  /// A text shows instead of a raw mention of the user (e.g., when the user has no username)
  TextEntityTypeMentionName({this.userId});

  /// Parse from a json
  TextEntityTypeMentionName.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
  }

  static const CONSTRUCTOR = 'textEntityTypeMentionName';

  /// [userId] Identifier of the mentioned user
  int? userId;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
    };
  }
}
