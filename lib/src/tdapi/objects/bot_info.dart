part of '../index.dart';

/// Provides information about a bot and its supported commands
class BotInfo extends TdObject {
  BotInfo({required this.description, required this.commands});

  /// Parse from a json
  factory BotInfo.fromJson(Map<String, dynamic> json) => BotInfo(
        description: json['description'],
        commands: List<BotCommand>.from((json['commands'] ?? [])
            .map((item) => BotCommand.fromJson(item))
            .toList()),
      );

  static const CONSTRUCTOR = 'botInfo';

  /// [commands] A list of commands supported by the bot
  List<BotCommand> commands;

  /// [description] Long description shown on the user info page
  String description;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "description": description,
      "commands": commands.map((i) => i.toJson()).toList(),
    };
  }
}
