import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'newplugin_platform_interface.dart';

/// An implementation of [NewpluginPlatform] that uses method channels.
class MethodChannelNewplugin extends NewpluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('newplugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
