//
//  UINibExtension.swift
//  POC4VEngine
//
//  Created by Rodolfo Antonici on 25/09/17.
//  Copyright © 2017 Rodolfo Antonici. All rights reserved.
//

import UIKit
extension UINib {
    public convenience init(nibName name: UINib.Name, bundle bundleOrNil: Bundle? = nil) {
        self.init(nibName: name.rawValue, bundle: bundleOrNil)
    }
    
    public struct Name: RawRepresentable, Equatable, Hashable {
        
        public let rawValue: String
        public var hashValue: Int {
            return rawValue.hashValue
        }
        
        //RawRepresentable
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
        public init(_ rawValue: String) {
            self.rawValue = rawValue
        }
        
        //Equatable
        public static func ==(lhs: UINib.Name, rhs: UINib.Name) -> Bool {
            return lhs.rawValue == rhs.rawValue
        }
    }
}
