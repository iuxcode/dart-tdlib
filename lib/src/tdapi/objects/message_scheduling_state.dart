// ignore_for_file: constant_identifier_names

part of '../index.dart';

/// Contains information about the time when a scheduled message will be sent
class MessageSchedulingState extends TdObject {
  MessageSchedulingState();

  /// a MessageSchedulingState return type can be :
  /// * MessageSchedulingStateSendAtDate
  /// * MessageSchedulingStateSendWhenOnline
  factory MessageSchedulingState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case MessageSchedulingStateSendAtDate.CONSTRUCTOR:
        return MessageSchedulingStateSendAtDate.fromJson(json);
      case MessageSchedulingStateSendWhenOnline.CONSTRUCTOR:
        return MessageSchedulingStateSendWhenOnline.fromJson(json);
      default:
        return MessageSchedulingState();
    }
  }

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'messageSchedulingState';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// The message will be sent at the specified date
class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  MessageSchedulingStateSendAtDate({required this.sendDate});

  /// Parse from a json
  factory MessageSchedulingStateSendAtDate.fromJson(
          Map<String, dynamic> json) =>
      MessageSchedulingStateSendAtDate(sendDate: json['send_date']);

  static const CONSTRUCTOR = 'messageSchedulingStateSendAtDate';

  /// [sendDate] Date the message will be sent. The date must be within 367 days in the future
  int sendDate;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "send_date": sendDate,
    };
  }
}

class MessageSchedulingStateSendWhenOnline extends MessageSchedulingState {
  /// The message will be sent when the peer will be online. Applicable to private chats only and when the exact online status of the peer is known
  MessageSchedulingStateSendWhenOnline();

  /// Parse from a json
  MessageSchedulingStateSendWhenOnline.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'messageSchedulingStateSendWhenOnline';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
