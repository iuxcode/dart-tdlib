import 'dart_tdlib_platform_interface.dart';
import 'src/td_client.dart';

export 'src/td_api.dart';
export './src/td_client.dart';

// ignore: non_constant_identifier_names
TdClientInterface TdClient = DartTdlibPlatform.instance as TdClientInterface;
