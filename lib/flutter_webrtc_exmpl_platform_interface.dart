import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_webrtc_exmpl_method_channel.dart';

abstract class FlutterWebrtcExmplPlatform extends PlatformInterface {
  /// Constructs a FlutterWebrtcExmplPlatform.
  FlutterWebrtcExmplPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterWebrtcExmplPlatform _instance = MethodChannelFlutterWebrtcExmpl();

  /// The default instance of [FlutterWebrtcExmplPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterWebrtcExmpl].
  static FlutterWebrtcExmplPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterWebrtcExmplPlatform] when
  /// they register themselves.
  static set instance(FlutterWebrtcExmplPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
