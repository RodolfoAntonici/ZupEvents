//
//  UIGestureRecognizerExtension.swift
//  VivoEasyV3
//
//  Created by Rodolfo Antonici on 27/12/17.
//  Copyright © 2017 Rodolfo Antonici. All rights reserved.
//

import UIKit

//https://developer.apple.com/videos/play/wwdc2014/235/
extension UIGestureRecognizer {
    func cancel() {
        isEnabled = false
        isEnabled = true
    }
}
