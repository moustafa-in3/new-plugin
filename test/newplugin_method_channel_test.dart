import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:newplugin/newplugin_method_channel.dart';

void main() {
  MethodChannelNewplugin platform = MethodChannelNewplugin();
  const MethodChannel channel = MethodChannel('newplugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
