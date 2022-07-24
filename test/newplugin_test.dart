import 'package:flutter_test/flutter_test.dart';
import 'package:newplugin/newplugin.dart';
import 'package:newplugin/newplugin_platform_interface.dart';
import 'package:newplugin/newplugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNewpluginPlatform 
    with MockPlatformInterfaceMixin
    implements NewpluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NewpluginPlatform initialPlatform = NewpluginPlatform.instance;

  test('$MethodChannelNewplugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNewplugin>());
  });

  test('getPlatformVersion', () async {
    Newplugin newpluginPlugin = Newplugin();
    MockNewpluginPlatform fakePlatform = MockNewpluginPlatform();
    NewpluginPlatform.instance = fakePlatform;
  
    expect(await newpluginPlugin.getPlatformVersion(), '42');
  });
}
