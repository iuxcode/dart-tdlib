// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Contains information about the sending state of the message
class MessageSendingState extends TdObject {
  MessageSendingState();

  /// a MessageSendingState return type can be :
  /// * MessageSendingStatePending
  /// * MessageSendingStateFailed
  factory MessageSendingState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSendingStatePending.CONSTRUCTOR:
        return MessageSendingStatePending.fromJson(json);
      case MessageSendingStateFailed.CONSTRUCTOR:
        return MessageSendingStateFailed.fromJson(json);
      default:
        return MessageSendingState();
    }
  }

  static const CONSTRUCTOR = 'messageSendingState';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// The message is being sent now, but has not yet been delivered to the server
class MessageSendingStatePending extends MessageSendingState {
  MessageSendingStatePending();

  /// Parse from a json
  MessageSendingStatePending.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'messageSendingStatePending';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

/// The message failed to be sent
class MessageSendingStateFailed extends MessageSendingState {
  MessageSendingStateFailed({
    this.errorCode = 0,
    required this.errorMessage,
    this.canRetry = false,
    required this.retryAfter,
  });

  /// Parse from a json
  factory MessageSendingStateFailed.fromJson(Map<String, dynamic> json) =>
      MessageSendingStateFailed(
        errorCode: json['error_code'],
        errorMessage: json['error_message'],
        canRetry: json['can_retry'],
        retryAfter: json['retry_after'],
      );

  static const CONSTRUCTOR = 'messageSendingStateFailed';

  /// [canRetry] True, if the message can be re-sent
  bool canRetry;

  /// [errorCode] An error code; 0 if unknown
  int errorCode;

  /// [errorMessage] Error message
  String errorMessage;

  /// [retryAfter] Time left before the message can be re-sent, in seconds. No update is sent when this field changes
  double retryAfter;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "error_code": errorCode,
      "error_message": errorMessage,
      "can_retry": canRetry,
      "retry_after": retryAfter,
    };
  }
}
