import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_webrtc_exmpl/flutter_webrtc_exmpl.dart';
import 'package:flutter_webrtc_exmpl/flutter_webrtc_exmpl_platform_interface.dart';
import 'package:flutter_webrtc_exmpl/flutter_webrtc_exmpl_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterWebrtcExmplPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterWebrtcExmplPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterWebrtcExmplPlatform initialPlatform = FlutterWebrtcExmplPlatform.instance;

  test('$MethodChannelFlutterWebrtcExmpl is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterWebrtcExmpl>());
  });

  test('getPlatformVersion', () async {
    FlutterWebrtcExmpl flutterWebrtcExmplPlugin = FlutterWebrtcExmpl();
    MockFlutterWebrtcExmplPlatform fakePlatform = MockFlutterWebrtcExmplPlatform();
    FlutterWebrtcExmplPlatform.instance = fakePlatform;
  
    expect(await flutterWebrtcExmplPlugin.getPlatformVersion(), '42');
  });
}
