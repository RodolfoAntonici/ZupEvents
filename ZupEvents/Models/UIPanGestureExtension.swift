//
//  PanGestureExtension.swift
//  Distribution
//
//  Created by Rodolfo Antonici on 07/11/17.
//  Copyright © 2017 Rodolfo Antonici. All rights reserved.
//

import UIKit
extension UIPanGestureRecognizer {
    
    
    // consider which direction has the bigger velocity to consider it as scroll direction
    func direction(in view: UIView) -> Direction {
        let translationInView = translation(in: view)
        
        if fabs(translationInView.x) > fabs(translationInView.y) {
          return translationInView.x > 0 ? .right : .left
        }
        else {
          return translationInView.y > 0 ? .down : .up
        }
    }
}
