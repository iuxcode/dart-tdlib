part of '../index.dart';

class SetChatClientData extends TdFunction {
  /// Changes application-specific data associated with a chat
  SetChatClientData({this.chatId, this.clientData});

  /// [chatId] Chat identifier
  int? chatId;

  /// [clientData] New value of client_data
  String? clientData;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetChatClientData.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "client_data": this.clientData,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatClientData';

  @override
  String getConstructor() => CONSTRUCTOR;
}
