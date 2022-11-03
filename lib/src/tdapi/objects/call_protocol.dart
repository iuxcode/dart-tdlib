part of '../index.dart';

/// Specifies the supported call protocols
class CallProtocol extends TdObject {
  CallProtocol({
    this.udpP2p = false,
    this.udpReflector = false,
    this.minLayer = 65,
    this.maxLayer = 65,
    this.libraryVersions = const [],
  });

  /// Parse from a json
  factory CallProtocol.fromJson(Map<String, dynamic> json) => CallProtocol(
        udpP2p: json['udp_p2p'],
        udpReflector: json['udp_reflector'],
        minLayer: json['min_layer'],
        maxLayer: json['max_layer'],
        libraryVersions: List<String>.from(
            (json['library_versions'] ?? []).map((item) => item).toList()),
      );

  static const CONSTRUCTOR = 'callProtocol';

  /// [libraryVersions] List of supported tgcalls versions
  List<String> libraryVersions;

  /// [maxLayer] The maximum supported API layer; use 65
  int maxLayer;

  /// [minLayer] The minimum supported API layer; use 65
  int minLayer;

  /// [udpP2p] True, if UDP peer-to-peer connections are supported
  bool udpP2p;

  /// [udpReflector] True, if connection through UDP reflectors is supported
  bool udpReflector;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "udp_p2p": this.udpP2p,
      "udp_reflector": this.udpReflector,
      "min_layer": this.minLayer,
      "max_layer": this.maxLayer,
      "library_versions": this.libraryVersions.map((i) => i).toList(),
    };
  }
}
