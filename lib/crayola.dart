import 'dart:async';

import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class Crayola {
  static const MethodChannel _channel = const MethodChannel('crayola');

  /// Sets the color of the main window title bar.
  /// Blends with platform default overlay if [transparent] is `true`
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

  /// Set the visibility of the main window title text
  static Future<void> setTitleVisibility(bool visible) async {
    await _channel.invokeMethod('setTitleVisibility', visible);
  }

  /// Set the visiblity of the main window title bar.
  /// If `false`, this will also remove the maximize, resize and close buttons.
  static Future<void> setTitleBarVisibility(bool visible) async {
    await _channel.invokeMethod('setTitleBarVisibility', visible);
  }
}
