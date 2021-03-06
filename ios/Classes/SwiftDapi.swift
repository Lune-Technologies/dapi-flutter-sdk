import Flutter
import UIKit

public class SwiftDapi: NSObject, FlutterPlugin,FlutterStreamHandler {
   static let channelName = "plugins.lune.ae/dapi"
   static let eventAuthName = "plugins.lune.ae/dapi/connect"

    
    var connectDelegate: DapiConnectDelegate?
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: channelName, binaryMessenger: registrar.messenger())
        let eventsAuthChannel = FlutterEventChannel(name: eventAuthName, binaryMessenger: registrar.messenger())

        let instance = SwiftDapi()
        instance.connectDelegate = DapiConnectDelegate()
        registrar.addMethodCallDelegate(instance, channel: channel)
        eventsAuthChannel.setStreamHandler(instance)
    

    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        connectDelegate?.executeAction(call, result)
    }
    
    public func onListen(withArguments arguments: Any?, eventSink : @escaping FlutterEventSink) -> FlutterError? {
        connectDelegate?.connect(eventSink: eventSink)

        return nil
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        return nil

    }

}



