library td_client;

import 'dart:async';
import 'package:dart_tdlib/dart_tdlib_platform_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dart_tdlib/src/tdapi/index.dart'
    show TdObject, TdFunction, convertToObject;
import 'dart:convert' show json;

class TdClientInterface extends DartTdlibPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dart_tdlib');
  final eventChannel = const EventChannel('dart_tdlib/receive');

  /// Creates a new instance of TDLib.
  /// Returns client id for the created instance of TDLib.
  /// 0 mean No client instance.
  Future<int> createClient() async {
    try {
      return await methodChannel.invokeMethod('clientCreate');
    } on PlatformException {
      return 0;
    }
  }

  /// Destroys the TDLib client instance. After this is called the client instance shouldn't be used anymore.
  Future<void> destroyClient(int clientId) async => await methodChannel
      .invokeMethod('clientDestroy', <String, dynamic>{'client': clientId});

  /// Sends request to the TDLib client. May be called from any thread.
  Future<void> clientSend(int clientId, TdFunction event) async =>
      await methodChannel.invokeMethod('clientSend',
          <String, dynamic>{'client': clientId, 'query': json.encode(event)});

  /// Events from the incoming updates and request responses from the TDLib client by [clientId] identifier.
  /// Must be call once per client.
  Stream<TdObject?> clientEvents(int clientId) => eventChannel.receiveBroadcastStream(clientId).map((event) => convertToObject(event));

  /// Receives incoming updates and request responses from the TDLib client by [clientId] identifier and [timeout].
  /// May be called from any thread, but shouldn't be called simultaneously from two different threads.
  /// Returned pointer will be deallocated by TDLib during next call to clientExecute or clientSend in the same thread, so it can't be used after that.
  Future<TdObject> clientReceive(int clientId, double timeout) async =>
      convertToObject(await methodChannel.invokeMethod('clientReceive',
          <String, dynamic>{'client': clientId, 'timeout': timeout}))!;

  /// Synchronously executes TDLib request. May be called from any thread.
  /// Only a few requests can be executed synchronously.
  /// Returned pointer will be deallocated by TDLib during next call to clientReceive or clientExecute in the same thread, so it can't be used after that.
  Future<TdObject> clientExecute(int clientId, TdFunction event) async =>
      convertToObject(await methodChannel.invokeMethod('clientExecute',
          <String, dynamic>{'client': clientId, 'query': json.encode(event)}))!;

  /// Sets the verbosity [level] of the internal logging of TDLib.
  /// By default the TDLib uses a log verbosity [level] of 5.
  /// Value 0 corresponds to fatal errors.
  /// value 1 corresponds to errors.
  /// value 2 corresponds to warnings and debug warnings.
  /// value 3 corresponds to informational.
  /// value 4 corresponds to debug.
  /// value 5 corresponds to verbose debug.
  /// value greater than 5 and up to 1024 can be used to enable even more logging.
  /// static Future<void> setLogVerbosityLevel(int level) async => await methodChannel
  ///    .invokeMethod('logLevel', <String, dynamic>{'level': level});

  /// Sets the path to the file where the internal TDLib log will be written.
  /// By default TDLib writes logs to stderr or an OS specific log.
  /// Use this method to write the log to a file instead.
  /// Null-terminated [filePath] to a file where the internal TDLib log will be written. Use an empty path to switch back to the default logging behaviour.
  // static Future<void> setLogFilePath(String filePath) async => await methodChannel
  //    .invokeMethod('logPath', <String, dynamic>{'path': filePath});

  /// Sets maximum size of the file to where the internal TDLib log is written before the file will be auto-rotated.
  /// Unused if log is not written to a file. Defaults to 10 MB.
  /// Maximum [size] of the file to where the internal TDLib log is written before the file will be auto-rotated. Should be positive.
  // static Future<void> setLogMaxFileSize(int size) async =>
  //    await methodChannel.invokeMethod('logSize', <String, dynamic>{'size': size});
}
