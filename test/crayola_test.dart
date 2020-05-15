import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crayola/crayola.dart';

void main() {
  const MethodChannel channel = MethodChannel('crayola');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('setTitleBarColor', () async {
    var error;
    try {
      await Crayola.setTitleBarColor(Colors.red);
    } catch (e) {
      error = e;
    }
    expect(error, null);
  });

  test('setTitleVisiblity', () async {
    var error;
    try {
      await Crayola.setTitleVisibility(false);
    } catch (e) {
      error = e;
    }
    expect(error, null);
  });

  test('setTitleBarVisiblity', () async {
    var error;
    try {
      await Crayola.setTitleBarVisibility(false);
    } catch (e) {
      error = e;
    }
    expect(error, null);
  });
}
