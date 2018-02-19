//
//  UIStoryboardExtension.swift
//  POC4VEngine
//
//  Created by Rodolfo Antonici on 25/09/17.
//  Copyright © 2017 Rodolfo Antonici. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    class func instantiateViewController(withIdentifier identifier: UIStoryboard.Identifier, onStoryboardWithName name: UIStoryboard.Name) -> UIViewController {
         return UIStoryboard(name: name).instantiateViewController(withIdentifier: identifier)
    }
    
    public convenience init(name: UIStoryboard.Name, bundle storyboardBundleOrNil: Bundle? = nil) {
        self.init(name: name.rawValue, bundle: storyboardBundleOrNil)
    }
    
    open func instantiateViewController(withIdentifier identifier: UIStoryboard.Identifier) -> UIViewController {
        return instantiateViewController(withIdentifier: identifier.rawValue)
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
        public static func ==(lhs: UIStoryboard.Name, rhs: UIStoryboard.Name) -> Bool {
            return lhs.rawValue == rhs.rawValue
        }
    }
    
    public struct Identifier: RawRepresentable, Equatable, Hashable {
        
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
        public static func ==(lhs: UIStoryboard.Identifier, rhs: UIStoryboard.Identifier) -> Bool {
            return lhs.rawValue == rhs.rawValue
        }
    }
}
