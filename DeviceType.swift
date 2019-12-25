//
//  DeviceType.swift
//
//
//  Created by Mikhail Panfilov on 24.12.2019.
//  Copyright © 2019 Mikhail Panfilov. All rights reserved.
//

import UIKit

struct ScreenSize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLength = max(ScreenSize.width, ScreenSize.height)
    static let minLength = min(ScreenSize.width, ScreenSize.height)
}

/// Type of device, based on screen size.
struct DeviceType {
    let userInterfaceIdiom = UIDevice.current.userInterfaceIdiom
    static let iPhoneSE = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength <= 568.0
    static let iPhone8 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 667.0
    static let iPhone8Plus = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength >= 736.0
    static let iPhoneX = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 812.0
    // Aslo iPhone Xr
    static let iPhoneXsMax = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 896.0
    static let iPhone = UIDevice.current.userInterfaceIdiom == .phone
    static let iPad = UIDevice.current.userInterfaceIdiom == .pad
    
    static var hasTopNotch: Bool {
        if #available(iOS 11.0,  *) {
            return UIApplication.shared.delegate?.window??.safeAreaInsets.top ?? 0 > 20
        }
        return false
    }
}
