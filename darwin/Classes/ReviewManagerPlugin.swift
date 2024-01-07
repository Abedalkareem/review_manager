import Flutter
import UIKit

private let ChannelName = "review_manager"

public class ReviewManagerPlugin: NSObject, FlutterPlugin {
  
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: ChannelName, binaryMessenger: registrar.messenger())
    let instance = ReviewManagerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }
  
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    
    let method = Method(rawValue: call.method)
    switch method {
    case .requestReviewIfAppropriate:
      ReviewManager.requestReviewIfAppropriate()
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
