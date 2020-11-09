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
    
    /// 5, 5s, 5c, SE
    static let iPhoneSE = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength <= 568.0
    /// 6+ 6s 7, 8
    static let iPhoneWithoutTopNotch = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 667.0
    /// 6+, 6s+ 7+, 8+
    static let iPhonePlus = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 736.0
    /// X, Xs, 11 Pro, 12 Mini
    static let iPhoneXOr12Mini = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 812.0
    // Xr, Xs Max, 11, 11 Pro Max
    static let iPhoneXrOrMax = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 896.0
    /// 12, 12 Pro
    static let iPhone12 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 844.0
    /// 12 Pro Max
    static let iPhone12Max = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.maxLength == 926.0
    
    static let iPhone = UIDevice.current.userInterfaceIdiom == .phone
    static let iPad = UIDevice.current.userInterfaceIdiom == .pad
    
    static var hasTopNotch: Bool {
        if #available(iOS 11.0,  *) {
            return UIApplication.shared.delegate?.window??.safeAreaInsets.top ?? 0 > 20
        }
        return false
    }
}
