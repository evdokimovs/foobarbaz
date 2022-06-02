import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_webrtc_exmpl_platform_interface.dart';

/// An implementation of [FlutterWebrtcExmplPlatform] that uses method channels.
class MethodChannelFlutterWebrtcExmpl extends FlutterWebrtcExmplPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_webrtc_exmpl');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
