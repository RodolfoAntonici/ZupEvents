//
//  UIColorExtension.swift
//  VivoEasyV3
//
//  Created by Rodolfo Antonici on 06/10/17.
//  Copyright © 2017 Rodolfo Antonici. All rights reserved.
//

import UIKit

extension UIColor {
    static let primaryPurpleColor: UIColor = UIColor.init(red: 102, green:0, blue: 153, a: 1)
    static let grayDescriptionColor: UIColor = UIColor.init(red: 136, green: 136, blue: 136, a: 1)
    static let grayCircleColor: UIColor = UIColor.init(red: 209, green: 202, blue: 209, a: 1)
    
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
    
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    
    convenience init(rgb: Int, a: CGFloat = 1.0) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF,
            a: a
        )
    }
    
    func byAddingBrightness(_ brightnessToAdd: CGFloat) -> UIColor {
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness:CGFloat = 0
        var alpha:CGFloat = 0
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return UIColor(hue: hue, saturation: saturation, brightness: brightness + brightnessToAdd, alpha: alpha)
        }
        return self
    }
}
