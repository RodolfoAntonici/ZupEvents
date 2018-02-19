//
//  UITableViewExtension.swift
//  POC4VEngine
//
//  Created by Rodolfo Antonici on 23/09/17.
//  Copyright © 2017 Rodolfo Antonici. All rights reserved.
//

import UIKit
extension UITableView {
    func getContentViewHeight() -> CGFloat{
        reloadData()
        layoutIfNeeded()
        return contentSize.height + contentInset.bottom + contentInset.top
    }
    
    func reloadData(completion: @escaping ()->()) {
        UIView.animate(withDuration:0, animations: { self.reloadData() }){
            _ in completion()
            
        }
    }
    
}

extension UITableView {
    open func dequeueReusableCell(withIdentifier identifier: UITableViewCell.Identifier) -> UITableViewCell? {
        return dequeueReusableCell(withIdentifier: identifier.rawValue)
    }
    
    @available(iOS 6.0, *)
    open func dequeueReusableCell(withIdentifier identifier: UITableViewCell.Identifier, for indexPath: IndexPath) -> UITableViewCell {
        return dequeueReusableCell(withIdentifier: identifier.rawValue, for: indexPath)
    }
    
    @available(iOS 6.0, *)
    open func dequeueReusableHeaderFooterView(withIdentifier identifier: UITableViewHeaderFooterView.Identifier) -> UITableViewHeaderFooterView? {
        return dequeueReusableHeaderFooterView(withIdentifier: identifier.rawValue)
    }
    
    
    @available(iOS 5.0, *)
    open func register(_ nib: UINib?, forCellReuseIdentifier identifier: UITableViewCell.Identifier) {
        register(nib, forCellReuseIdentifier: identifier.rawValue)
    }
    
    
    @available(iOS 6.0, *)
    open func register(_ cellClass: Swift.AnyClass?, forCellReuseIdentifier identifier: UITableViewCell.Identifier) {
        register(cellClass, forCellReuseIdentifier: identifier.rawValue)
    }
    
    @available(iOS 6.0, *)
    open func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: UITableViewHeaderFooterView.Identifier) {
        register(nib, forHeaderFooterViewReuseIdentifier: identifier.rawValue)
    }
    
    @available(iOS 6.0, *)
    open func register(_ aClass: Swift.AnyClass?, forHeaderFooterViewReuseIdentifier identifier: UITableViewHeaderFooterView.Identifier) {
        register(aClass, forHeaderFooterViewReuseIdentifier: identifier.rawValue)
    }
    
}
