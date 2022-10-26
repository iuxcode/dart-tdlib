part of '../index.dart';

/// Describes a poll
class Poll extends TdObject {
  Poll({
    required this.id,
    required this.question,
    required this.options,
    required this.totalVoterCount,
    required this.recentVoterUserIds,
    this.isAnonymous = false,
    required this.type,
    required this.openPeriod,
    required this.closeDate,
    this.isClosed = false,
  });

  /// Parse from a json
  factory Poll.fromJson(Map<String, dynamic> json) => Poll(
        id: int.parse(json['id']),
        question: json['question'],
        options: List<PollOption>.from((json['options'] ?? [])
            .map((item) => PollOption.fromJson(item))
            .toList()),
        totalVoterCount: json['total_voter_count'],
        recentVoterUserIds: List<int>.from(
            (json['recent_voter_user_ids'] ?? []).map((item) => item).toList()),
        isAnonymous: json['is_anonymous'],
        type: PollType.fromJson(json['type']),
        openPeriod: json['open_period'],
        closeDate: json['close_date'],
        isClosed: json['is_closed'],
      );

  static const CONSTRUCTOR = 'poll';

  /// [closeDate] Point in time (Unix timestamp) when the poll will be automatically closed
  int closeDate;

  /// [id] Unique poll identifier
  int id;

  /// [isAnonymous] True, if the poll is anonymous
  bool isAnonymous;

  /// [isClosed] True, if the poll is closed
  bool isClosed;

  /// [openPeriod] Amount of time the poll will be active after creation, in seconds
  int openPeriod;

  /// [options] List of poll answer options
  List<PollOption> options;

  /// [question] Poll question, 1-300 characters
  String question;

  /// [recentVoterUserIds] User identifiers of recent voters, if the poll is non-anonymous
  List<int> recentVoterUserIds;

  /// [totalVoterCount] Total number of voters, participating in the poll
  int totalVoterCount;

  /// [type] Type of the poll
  PollType type;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "question": this.question,
      "options": this.options.map((i) => i.toJson()).toList(),
      "total_voter_count": this.totalVoterCount,
      "recent_voter_user_ids": this.recentVoterUserIds.map((i) => i).toList(),
      "is_anonymous": this.isAnonymous,
      "type": this.type.toJson(),
      "open_period": this.openPeriod,
      "close_date": this.closeDate,
      "is_closed": this.isClosed,
    };
  }
}
