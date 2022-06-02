
import 'flutter_webrtc_exmpl_platform_interface.dart';

class FlutterWebrtcExmpl {
  Future<String?> getPlatformVersion() {
    return FlutterWebrtcExmplPlatform.instance.getPlatformVersion();
  }
}
