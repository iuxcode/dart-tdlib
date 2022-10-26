part of '../index.dart';

/// Represents a command supported by a bot
class BotCommand extends TdObject {
  BotCommand({required this.command, required this.description});

  /// Parse from a json
  factory BotCommand.fromJson(Map<String, dynamic> json) => BotCommand(
        command: json['command'],
        description: json['description'],
      );

  static const CONSTRUCTOR = 'botCommand';

  /// [command] Text of the bot command
  String command;

  /// [description] Description of the bot command
  String description;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "command": command,
      "description": description,
    };
  }
}
