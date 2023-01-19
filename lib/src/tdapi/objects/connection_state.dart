part of '../index.dart';

/// Describes the current state of the connection to Telegram servers
/// a ConnectionState return type can be :
/// * ConnectionStateWaitingForNetwork
/// * ConnectionStateConnectingToProxy
/// * ConnectionStateConnecting
/// * ConnectionStateUpdating
/// * ConnectionStateReady
class ConnectionState extends TdObject {
  ConnectionState();

  factory ConnectionState.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ConnectionStateWaitingForNetwork.CONSTRUCTOR:
        return ConnectionStateWaitingForNetwork.fromJson(json);
      case ConnectionStateConnectingToProxy.CONSTRUCTOR:
        return ConnectionStateConnectingToProxy.fromJson(json);
      case ConnectionStateConnecting.CONSTRUCTOR:
        return ConnectionStateConnecting.fromJson(json);
      case ConnectionStateUpdating.CONSTRUCTOR:
        return ConnectionStateUpdating.fromJson(json);
      case ConnectionStateReady.CONSTRUCTOR:
        return ConnectionStateReady.fromJson(json);
      default:
        return ConnectionState();
    }
  }

  static const CONSTRUCTOR = 'connectionState';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

  /// Currently waiting for the network to become available.
  /// Use setNetworkType to change the available network type
class ConnectionStateWaitingForNetwork extends ConnectionState {
  ConnectionStateWaitingForNetwork();

  /// Parse from a json
  ConnectionStateWaitingForNetwork.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'connectionStateWaitingForNetwork';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

  /// Currently establishing a connection with a proxy server
class ConnectionStateConnectingToProxy extends ConnectionState {
  ConnectionStateConnectingToProxy();

  /// Parse from a json
  ConnectionStateConnectingToProxy.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'connectionStateConnectingToProxy';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

  /// Currently establishing a connection to the Telegram servers
class ConnectionStateConnecting extends ConnectionState {
  ConnectionStateConnecting();

  /// Parse from a json
  ConnectionStateConnecting.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'connectionStateConnecting';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

  /// Downloading data received while the application was offline
class ConnectionStateUpdating extends ConnectionState {
  ConnectionStateUpdating();

  /// Parse from a json
  ConnectionStateUpdating.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'connectionStateUpdating';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}

  /// There is a working connection to the Telegram servers
class ConnectionStateReady extends ConnectionState {
  ConnectionStateReady();

  /// Parse from a json
  ConnectionStateReady.fromJson(Map<String, dynamic> json);

  static const CONSTRUCTOR = 'connectionStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }
}
