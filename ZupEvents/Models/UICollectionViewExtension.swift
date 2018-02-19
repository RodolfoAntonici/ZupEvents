//
//  UICollectionViewExtension.swift
//  POC4VEngine
//
//  Created by Rodolfo Antonici on 25/09/17.
//  Copyright © 2017 Rodolfo Antonici. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    open func register(_ cellClass: Swift.AnyClass?, forCellWithReuseIdentifier identifier: UICollectionViewCell.Identifier) {
        register(cellClass, forCellWithReuseIdentifier: identifier.rawValue)
    }
    
    open func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: UICollectionViewCell.Identifier) {
        register(nib, forCellWithReuseIdentifier: identifier.rawValue)
    }
    
    open func dequeueReusableCell(withReuseIdentifier identifier: UICollectionViewCell.Identifier, for indexPath: IndexPath) -> UICollectionViewCell {
        return dequeueReusableCell(withReuseIdentifier: identifier.rawValue, for: indexPath)
    }
    
}
