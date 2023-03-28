import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      GeneratedPluginRegistrant.register(with: self)
      if let messager: FlutterBinaryMessenger = window?.rootViewController as? FlutterBinaryMessenger {
          let registrar: FlutterPluginRegistrar = self.registrar(forPlugin: "plugins.flutter.io/custom_platform_view_plugin")!
          let factory = PlatformFactory(messager: messager)
          registrar.register(factory, withId: "plugins.flutter.io/custom_platform_view_plugin")
      }
      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
