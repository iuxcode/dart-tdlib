part of '../index.dart';

/// Describes a server for relaying call data
class CallServer extends TdObject {
  CallServer({
    required this.id,
    required this.ipAddress,
    required this.ipv6Address,
    required this.port,
    required this.type,
  });

  /// Parse from a json
  factory CallServer.fromJson(Map<String, dynamic> json) => CallServer(
        id: json['id'],
        ipAddress: json['ip_address'],
        ipv6Address: json['ipv6_address'],
        port: json['port'],
        type: CallServerType.fromJson(json['type']),
      );

  static const CONSTRUCTOR = 'callServer';

  /// [id] Server identifier
  int id;

  /// [ipAddress] Server IPv4 address
  String ipAddress;

  /// [ipv6Address] Server IPv6 address
  String ipv6Address;

  /// [port] Server port number
  int port;

  /// [type] Server type
  CallServerType type;

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "ip_address": this.ipAddress,
      "ipv6_address": this.ipv6Address,
      "port": this.port,
      "type": this.type == null ? null : this.type!.toJson(),
    };
  }
}
