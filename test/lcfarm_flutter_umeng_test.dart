import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lcfarm_flutter_umeng/lcfarm_flutter_umeng.dart';

void main() {
  const MethodChannel channel = MethodChannel('lcfarm_flutter_umeng');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await LcfarmFlutterUmeng.platformVersion, '42');
  });
}
