import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'newplugin_method_channel.dart';

abstract class NewpluginPlatform extends PlatformInterface {
  /// Constructs a NewpluginPlatform.
  NewpluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static NewpluginPlatform _instance = MethodChannelNewplugin();

  /// The default instance of [NewpluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelNewplugin].
  static NewpluginPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NewpluginPlatform] when
  /// they register themselves.
  static set instance(NewpluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
