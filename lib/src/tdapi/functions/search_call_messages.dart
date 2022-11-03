part of '../index.dart';

/// Searches for call messages. Returns the results in reverse chronological order (i. e.,
/// in order of decreasing message_id). For optimal performance the number of
/// returned messages is chosen by the library
class SearchCallMessages extends TdFunction {
  SearchCallMessages({
    this.fromMessageId = 0,
    this.limit = 101,
    this.onlyMissed = false,
    this.extra,
  });

  static const CONSTRUCTOR = 'searchCallMessages';

  /// callback sign
  dynamic extra;

  /// [fromMessageId] Identifier of the message from which to search;
  /// use 0 to get results from the last message
  int fromMessageId;

  /// [limit] The maximum number of messages to be returned; up to 100.
  /// Fewer messages may be returned than specified by the limit,
  /// even if the end of the message history has not been reached
  int limit;

  /// [onlyMissed] If true, returns only messages with missed calls
  bool onlyMissed;

  @override
  String getConstructor() => CONSTRUCTOR;

  /// Parse from a json
  // SearchCallMessages.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "from_message_id": this.fromMessageId,
      "limit": this.limit,
      "only_missed": this.onlyMissed,
      "@extra": this.extra,
    };
  }
}
