part of '../index.dart';

/// Describes a web page preview
class WebPage extends TdObject {
  WebPage({
    required this.url,
    required this.displayUrl,
    required this.type,
    required this.siteName,
    required this.title,
    required this.description,
    this.photo,
    required this.embedUrl,
    required this.embedType,
    required this.embedWidth,
    required this.embedHeight,
    required this.duration,
    required this.author,
    this.animation,
    this.audio,
    this.document,
    this.sticker,
    this.video,
    this.videoNote,
    this.voiceNote,
    required this.instantViewVersion,
    this.extra,
  });

  /// Parse from a json
  factory WebPage.fromJson(Map<String, dynamic> json) => WebPage(
        url: json['url'],
        displayUrl: json['display_url'],
        type: json['type'],
        siteName: json['site_name'],
        title: json['title'],
        description: FormattedText.fromJson(json['description']),
        photo: Photo.fromJson(json['photo']),
        embedUrl: json['embed_url'],
        embedType: json['embed_type'],
        embedWidth: json['embed_width'],
        embedHeight: json['embed_height'],
        duration: json['duration'],
        author: json['author'],
        animation: Animation.fromJson(json['animation']),
        audio: Audio.fromJson(json['audio']),
        document: Document.fromJson(json['document']),
        sticker: Sticker.fromJson(json['sticker']),
        video: Video.fromJson(json['video']),
        videoNote: VideoNote.fromJson(json['video_note']),
        voiceNote: VoiceNote.fromJson(json['voice_note']),
        instantViewVersion: json['instant_view_version'],
        extra: json['@extra'],
      );

  // ignore: constant_identifier_names
  static const CONSTRUCTOR = 'webPage';

  /// [animation] Preview of the content as an animation, if available; may be null
  Animation? animation;

  /// [audio] Preview of the content as an audio file, if available; may be null
  Audio? audio;

  /// [author] Author of the content
  String author;

  /// [description] Description of the content
  FormattedText description;

  /// [displayUrl] URL to display
  String displayUrl;

  /// [document] Preview of the content as a document, if available (currently only available for small PDF files and ZIP archives); may be null
  Document? document;

  /// [duration] Duration of the content, in seconds
  int duration;

  /// [embedHeight] Height of the embedded preview
  int embedHeight;

  /// [embedType] MIME type of the embedded preview, (e.g., text/html or video/mp4)
  String embedType;

  /// [embedUrl] URL to show in the embedded preview
  String embedUrl;

  /// [embedWidth] Width of the embedded preview
  int embedWidth;

  /// callback sign
  dynamic extra;

  /// [instantViewVersion] Version of instant view, available for the web page (currently can be 1 or 2), 0 if none
  int instantViewVersion;

  /// [photo] Image representing the content; may be null
  Photo? photo;

  /// [siteName] Short name of the site (e.g., Google Docs, App Store)
  String siteName;

  /// [sticker] Preview of the content as a sticker for small WEBP files, if available; may be null
  Sticker? sticker;

  /// [title] Title of the content
  String title;

  /// [type] Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else
  String type;

  /// [url] Original URL of the link
  String url;

  /// [video] Preview of the content as a video, if available; may be null
  Video? video;

  /// [videoNote] Preview of the content as a video note, if available; may be null
  VideoNote? videoNote;

  /// [voiceNote] Preview of the content as a voice note, if available; may be null
  VoiceNote? voiceNote;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "display_url": displayUrl,
      "type": type,
      "site_name": siteName,
      "title": title,
      "description": description.toJson(),
      "photo": photo?.toJson(),
      "embed_url": embedUrl,
      "embed_type": embedType,
      "embed_width": embedWidth,
      "embed_height": embedHeight,
      "duration": duration,
      "author": author,
      "animation": animation?.toJson(),
      "audio": audio?.toJson(),
      "document": document?.toJson(),
      "sticker": sticker?.toJson(),
      "video": video?.toJson(),
      "video_note": videoNote?.toJson(),
      "voice_note": voiceNote?.toJson(),
      "instant_view_version": instantViewVersion,
      "extra": extra,
    };
  }
}
