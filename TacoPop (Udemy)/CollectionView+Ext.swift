//
//  UICollectionView+Ext.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/25/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.
//

import UIKit

extension UICollectionView {
    //1
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: T.reuseidentifier)
        
        //register we are gonna register our nib that we're just assinged right here with .nibName and reuseidentifier with T.reuseIdentifier
        
        //where this come from is these two that conforms to this ReusableView protocol and NibLoadableView protocol
        //ReusableView
    }
    
    //UICollectionViewCell where T conform to ReusableView, then return that type "the cell"
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseidentifier, for: indexPath as IndexPath) as? T else {
            fatalError("could not dequeue cell with identifier: \(T.reuseidentifier)")
        }
        //guard cell
        
        return cell
    }
}
//1
//all of our collectionViews are going to have this functionality
//this is where generics we talked about earlier are going to come into play
//generic "UICollectionViewCell" where the type is a "ReusableView" and where type is a "nibloadableView"
extension UICollectionViewCell: ReusableView {}

//having UICollectionViewCell conform to ReusableView
