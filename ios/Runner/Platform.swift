//
//  Platform.swift
//  Runner
//
//  Created by 雷子 on 2023/3/28.
//

import Foundation
import Flutter

class PlatformFactory: NSObject, FlutterPlatformViewFactory {
    
    var messager: FlutterBinaryMessenger
    
    init(messager: FlutterBinaryMessenger) {
        self.messager = messager
        super.init()
    }
    
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return PlatformView()
    }
    
    func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
    }
}

class PlatformView: NSObject, FlutterPlatformView {
    func view() -> UIView {
        return childView
    }
    
    lazy var childView: UIView = {
//        let v = UIView(frame: CGRect.init(x: 0, y: 0, width: 200, height: 200))
        let v = UIView()
        v.backgroundColor = .red
        return v
    }()
}
