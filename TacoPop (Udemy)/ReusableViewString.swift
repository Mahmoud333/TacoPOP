//
//  ReusableView.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/25/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.
//

import UIKit

protocol ReusableView: class { } //limited to class

extension ReusableView where Self: UIView {
    
    static var reuseidentifier: String {
        print("reuseidentifier var in ReusableViewString Protocol: \(String(describing: self))")
        return String(describing: self)
    }
}


//return class name

//exten. ReusableView where Self is UIView

//what this protocol here Basically when you conform to this and use this reuse identifier it just take the name of ur class
 //so our reuse identifier for TacoCell once we implement this will just be "TacoCell" then we don't have to worry about that anymore

