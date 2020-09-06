
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterTestPlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_test_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  //
  static Future<String> get getMessage async {
    final String text = await _channel.invokeMethod("getMessage");
    return text;
  }
  static Future<String> getMessageWithArgument(String text) async {
    final String message = await _channel.invokeMethod("getMessageWithArgument", {"text": text});
    return message;
  }
}
