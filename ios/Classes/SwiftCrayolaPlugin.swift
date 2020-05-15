import Flutter
import UIKit

public class SwiftCrayolaPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "crayola",
      binaryMessenger: registrar.messenger)
    let instance = SwiftCrayolaPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "setTitleBarColor":
      let values = call.arguments as! Dictionary
      let color = NSColor(
        red: values["r"],
        green: values["g"],
        blue: values["b"],
        alpha: values["a"],
      )

      let window = UIApplication.shared.windows.first!
    }
  }
}
