
//
//  Directions.swift
//  ZupEvents
//
//  Created by Rodolfo Antonici on 19/02/18.
//  Copyright © 2018 Rodolfo Antonici. All rights reserved.
//


public enum Direction {
    case left
    case right
    case up
    case down
    
    func isVertical() -> Bool {
        return self == .up || self == .down
    }
    
    func invertedValue() -> Direction {
        switch self {
        case .left:
            return .right
        case .right:
            return .left
        case .up:
            return .down
        case .down:
            return .up
        }
    }
}

extension Direction: CustomStringConvertible {
    public var description: String {
        switch self {
        case .left:
            return "left"
        case .right:
            return "right"
        case .up:
            return "up"
        case .down:
            return "down"
        }
    }
}
