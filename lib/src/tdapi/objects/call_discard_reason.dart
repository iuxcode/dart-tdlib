part of '../index.dart';

/// Describes the reason why a call was discarded
/// a CallDiscardReason return type can be :
/// * CallDiscardReasonEmpty
/// * CallDiscardReasonMissed
/// * CallDiscardReasonDeclined
/// * CallDiscardReasonDisconnected
/// * CallDiscardReasonHungUp
class CallDiscardReason extends TdObject {
  CallDiscardReason();

  factory CallDiscardReason.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CallDiscardReasonEmpty.CONSTRUCTOR:
        return CallDiscardReasonEmpty.fromJson(json);
      case CallDiscardReasonMissed.CONSTRUCTOR:
        return CallDiscardReasonMissed.fromJson(json);
      case CallDiscardReasonDeclined.CONSTRUCTOR:
        return CallDiscardReasonDeclined.fromJson(json);
      case CallDiscardReasonDisconnected.CONSTRUCTOR:
        return CallDiscardReasonDisconnected.fromJson(json);
      case CallDiscardReasonHungUp.CONSTRUCTOR:
        return CallDiscardReasonHungUp.fromJson(json);
      default:
        return CallDiscardReason();
    }
  }

  static const CONSTRUCTOR = 'callDiscardReason';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// The call wasn't discarded, or the reason is unknown
class CallDiscardReasonEmpty extends CallDiscardReason {
  CallDiscardReasonEmpty();

  /// Parse from a json
  CallDiscardReasonEmpty.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'callDiscardReasonEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The call was ended before the conversation started. It was cancelled by the caller or missed by the other party
class CallDiscardReasonMissed extends CallDiscardReason {
  CallDiscardReasonMissed();

  /// Parse from a json
  CallDiscardReasonMissed.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'callDiscardReasonMissed';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The call was ended before the conversation started. It was declined by the other party
class CallDiscardReasonDeclined extends CallDiscardReason {
  CallDiscardReasonDeclined();

  /// Parse from a json
  CallDiscardReasonDeclined.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'callDiscardReasonDeclined';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The call was ended during the conversation because the users were disconnected
class CallDiscardReasonDisconnected extends CallDiscardReason {
  CallDiscardReasonDisconnected();

  /// Parse from a json
  CallDiscardReasonDisconnected.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'callDiscardReasonDisconnected';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The call was ended because one of the parties hung up
class CallDiscardReasonHungUp extends CallDiscardReason {
  CallDiscardReasonHungUp();

  /// Parse from a json
  CallDiscardReasonHungUp.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'callDiscardReasonHungUp';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
