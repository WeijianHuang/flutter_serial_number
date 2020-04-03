import 'dart:async';

import 'package:flutter/services.dart';

class FlutterSerialNumber {
  static const MethodChannel _channel =
      const MethodChannel('flutter_serial_number');

  static Future<String> get serialNumber async {
    final String version = await _channel.invokeMethod('getSerialNumber');
    return version;
  }
}
