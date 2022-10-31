part of '../index.dart';

/// Describes the current call state
/// a CallState return type can be :
/// * CallStatePending
/// * CallStateExchangingKeys
/// * CallStateReady
/// * CallStateHangingUp
/// * CallStateDiscarded
/// * CallStateError
class CallState extends TdObject {
  CallState();

  factory CallState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CallStatePending.CONSTRUCTOR:
        return CallStatePending.fromJson(json);
      case CallStateExchangingKeys.CONSTRUCTOR:
        return CallStateExchangingKeys.fromJson(json);
      case CallStateReady.CONSTRUCTOR:
        return CallStateReady.fromJson(json);
      case CallStateHangingUp.CONSTRUCTOR:
        return CallStateHangingUp.fromJson(json);
      case CallStateDiscarded.CONSTRUCTOR:
        return CallStateDiscarded.fromJson(json);
      case CallStateError.CONSTRUCTOR:
        return CallStateError.fromJson(json);
      default:
        return CallState();
    }
  }

  static const CONSTRUCTOR = 'callState';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// The call is pending, waiting to be accepted by a user
class CallStatePending extends CallState {
  CallStatePending({this.isCreated = false, this.isReceived = false});

  /// Parse from a json
  factory CallStatePending.fromJson(Map<String, dynamic> json) =>
      CallStatePending(
        isCreated: json['is_created'],
        isReceived: json['is_received'],
      );

  static const CONSTRUCTOR = 'callStatePending';

  /// [isCreated] True, if the call has already been created by the server
  bool isCreated;

  /// [isReceived] True, if the call has already been received by the other party
  bool isReceived;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_created": this.isCreated,
      "is_received": this.isReceived,
    };
  }
}

/// The call has been answered and encryption keys are being exchanged
class CallStateExchangingKeys extends CallState {
  CallStateExchangingKeys();

  /// Parse from a json
  CallStateExchangingKeys.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'callStateExchangingKeys';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The call is ready to use
class CallStateReady extends CallState {
  CallStateReady({
    required this.protocol,
    required this.servers,
    required this.config,
    required this.encryptionKey,
    required this.emojis,
    this.allowP2p = false,
  });

  /// Parse from a json
  factory CallStateReady.fromJson(Map<String, dynamic> json) => CallStateReady(
        protocol: CallProtocol.fromJson(json['protocol']),
        servers: List<CallServer>.from((json['servers'] ?? [])
            .map((item) => CallServer.fromJson(item))
            .toList()),
        config: json['config'],
        encryptionKey: json['encryption_key'],
        emojis: List<String>.from(
            (json['emojis'] ?? []).map((item) => item).toList()),
        allowP2p: json['allow_p2p'],
      );

  static const CONSTRUCTOR = 'callStateReady';

  /// [allowP2p] True, if peer-to-peer connection is allowed by users privacy settings
  bool allowP2p;

  /// [config] A JSON-encoded call config
  String config;

  /// [emojis] Encryption key emojis fingerprint
  List<String> emojis;

  /// [encryptionKey] Call encryption key
  String encryptionKey;

  /// [protocol] Call protocols supported by the peer
  CallProtocol protocol;

  /// [servers] List of available call servers
  List<CallServer> servers;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "protocol": this.protocol.toJson(),
      "servers": this.servers.map((i) => i.toJson()).toList(),
      "config": this.config,
      "encryption_key": this.encryptionKey,
      "emojis": this.emojis.map((i) => i).toList(),
      "allow_p2p": this.allowP2p,
    };
  }
}

/// The call is hanging up after discardCall has been called
class CallStateHangingUp extends CallState {
  CallStateHangingUp();

  /// Parse from a json
  CallStateHangingUp.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'callStateHangingUp';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The call has ended successfully
class CallStateDiscarded extends CallState {
  CallStateDiscarded(
      {required this.reason,
      this.needRating = false,
      this.needDebugInformation = false});

  /// Parse from a json
  factory CallStateDiscarded.fromJson(Map<String, dynamic> json) =>
      CallStateDiscarded(
        reason: CallDiscardReason.fromJson(json['reason']),
        needRating: json['need_rating'],
        needDebugInformation: json['need_debug_information'],
      );

  static const CONSTRUCTOR = 'callStateDiscarded';

  /// [needDebugInformation] True, if the call debug information should be sent to the server
  bool needDebugInformation;

  /// [needRating] True, if the call rating should be sent to the server
  bool needRating;

  /// [reason] The reason, why the call has ended
  CallDiscardReason reason;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reason": this.reason.toJson(),
      "need_rating": this.needRating,
      "need_debug_information": this.needDebugInformation,
    };
  }
}

/// The call has ended with an error
class CallStateError extends CallState {
  CallStateError({required this.error});

  /// Parse from a json
  factory CallStateError.fromJson(Map<String, dynamic> json) =>
      CallStateError(error: TdError.fromJson(json['error']));

  static const CONSTRUCTOR = 'callStateError';

  /// [error] Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout
  TdError error;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "error": this.error.toJson(),
    };
  }
}
