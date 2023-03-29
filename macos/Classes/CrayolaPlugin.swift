import AppKit
import Cocoa
import FlutterMacOS

public class CrayolaPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "crayola", binaryMessenger: registrar.messenger)
        let instance = CrayolaPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "setTitleBarColor":
            let values = call.arguments as! [String: NSNumber]
            let color = NSColor(
                red: values["r"] as! CGFloat / 255,
                green: values["g"] as! CGFloat / 255,
                blue: values["b"] as! CGFloat / 255,
                alpha: values["a"] as! CGFloat / 255)
            
            let window = NSApp.windows.first
            window?.titlebarAppearsTransparent = values["t"]!.boolValue
            window?.backgroundColor = color
            result(nil)
            
        case "setTitleVisibility":
            let visible = (call.arguments as! NSNumber).boolValue
            let window = NSApp.windows.first
            window?.titleVisibility = visible ? .visible : .hidden
            result(nil)
            
        case "setTitleBarVisibility":
            let visible = (call.arguments as! NSNumber).boolValue
            let window = NSApp.windows.first
            if (visible) {
                window?.styleMask.insert(.titled)
            } else {
                window?.styleMask.remove(.titled)
            }
            result(nil)
            
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
