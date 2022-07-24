
import 'newplugin_platform_interface.dart';

class Newplugin {
  Future<String?> getPlatformVersion() {
    return NewpluginPlatform.instance.getPlatformVersion();
  }
}
