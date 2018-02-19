//
//  UIPinchGestureRecognizerExtension.swift
//  Distribution
//
//  Created by Rodolfo Antonici on 27/12/17.
//  Copyright © 2017 Rodolfo Antonici. All rights reserved.
//

import UIKit
enum ZoomDirection {
    case `in`
    case out
    case none
}
extension UIPinchGestureRecognizer {
    var direction: ZoomDirection {
        guard scale > 0 else { return .none}
        return scale < 1 ? .out : .in
    }
}
