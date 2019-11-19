//
//  Device+Util.swift
//  BMBlurMask
//
//  Created by JOJO on 2019/5/29.
//  Copyright © 2019 JOJO. All rights reserved.
//

import Foundation
import SwifterSwift


public protocol DeviceUtilProtocol {}

extension UIDevice: DeviceUtilProtocol {}

public extension DeviceUtilProtocol where Self: UIDevice {
    
    static func isPad() -> Bool {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return true
        } else {
            return false
        }
    }
    
    
}

