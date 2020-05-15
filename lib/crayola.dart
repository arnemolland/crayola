import 'dart:async';

import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class Crayola {
  static const MethodChannel _channel = const MethodChannel('crayola');

  static Future<void> setTitleBarColor(
    Color color, [
    bool transparent = true,
  ]) async {
    await _channel.invokeMethod('setTitleBarColor', {
      'r': color.red,
      'g': color.green,
      'b': color.blue,
      'a': color.alpha,
      't': transparent,
    });
  }

  static Future<void> setTitleVisibility(bool visible) async {
    await _channel.invokeMethod('setTitleVisibility', visible);
  }

  static Future<void> setTitleBarVisibility(bool visible) async {
    await _channel.invokeMethod('setTitleBarVisibility', visible);
  }
}
