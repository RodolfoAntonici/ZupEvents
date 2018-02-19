//
//  UIImageExtension.swift
//  POC4VEngine
//
//  Created by Rodolfo Antonici on 25/09/17.
//  Copyright © 2017 Rodolfo Antonici. All rights reserved.
//

import UIKit

extension UIImage {
    public convenience init?(assetName: UIImage.AssetName) {
        self.init(named: assetName.rawValue)
    }
    
    @available(iOS 8.0, *)
    public convenience init?(assetName: UIImage.AssetName, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?) {
        self.init(named: assetName.rawValue, in: bundle, compatibleWith: traitCollection)
    }
    
    public struct AssetName: RawRepresentable, Equatable, Hashable {
        
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
        public static func ==(lhs: UIImage.AssetName, rhs: UIImage.AssetName) -> Bool {
            return lhs.rawValue == rhs.rawValue
        }
    }
}
