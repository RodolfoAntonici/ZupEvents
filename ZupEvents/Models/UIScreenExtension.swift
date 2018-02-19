//
//  UIScreenExtension.swift
//  VivoEasyV3
//
//  Created by Rodolfo Antonici on 25/11/17.
//  Copyright © 2017 Rodolfo Antonici. All rights reserved.
//

import UIKit
extension UIScreen {
    enum Kind: String {
        case original = "3.5 in"
        case iPhone5 = "4 in"
        case iPhone6 = "4.7 in"
        case iPhonePlus = "5.5 in"
        case iPhoneX = "5.8 in"
        case unknown
    }
    
    static var screenType: Kind {
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .original
        case 1136:
            return .iPhone5
        case 1334:
            return .iPhone6
        case 1920, 2208:
            return .iPhonePlus
        case 2436:
            return .iPhoneX
        default:
            return .unknown
        }
    }
    
}
