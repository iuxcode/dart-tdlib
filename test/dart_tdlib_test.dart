import 'package:dart_tdlib/src/td_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dart_tdlib/dart_tdlib_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDartTdlibPlatform
    with MockPlatformInterfaceMixin
    implements DartTdlibPlatform {
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DartTdlibPlatform initialPlatform = DartTdlibPlatform.instance;

  test('$TdClientInterface is the default instance', () {
    expect(initialPlatform, isInstanceOf<TdClientInterface>());
  });

  test('getPlatformVersion', () async {
    MockDartTdlibPlatform fakePlatform = MockDartTdlibPlatform();
    DartTdlibPlatform.instance = fakePlatform;

    expect(await fakePlatform.getPlatformVersion(), '42');
  });
}
