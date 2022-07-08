import 'package:dart_tdlib/src/td_client.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class DartTdlibPlatform extends PlatformInterface {
  /// Constructs a DartTdlibPlatform.
  DartTdlibPlatform() : super(token: _token);

  static final Object _token = Object();

  static DartTdlibPlatform _instance = TdClientInterface();

  /// The default instance of [DartTdlibPlatform] to use.
  ///
  /// Defaults to [TdClient].
  static DartTdlibPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DartTdlibPlatform] when
  /// they register themselves.
  static set instance(DartTdlibPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }
}
