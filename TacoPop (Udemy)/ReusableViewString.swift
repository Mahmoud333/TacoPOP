//
//  ReusableView.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/25/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.
//

import UIKit

//return class name

protocol ReusableView: class { //limited to class
}

//exten. ReusableView where Self is UIView
extension ReusableView where Self: UIView {
    
    static var reuseidentifier: String {
        return String(describing: self)
    }
}
//what this protocol here Basically when you canform to this and use this reuse identifier it just take the name of ur class
 //so our reuse identifier for TacoCell once we implement this will just be "TacoCell" then we don't have to worry about that anymore

