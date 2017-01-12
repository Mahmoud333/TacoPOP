//
//  NibLoadableView.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/25/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.
//

// will load something from nib

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView { //limited to UIView
    static var nibName: String {
        print("nibName in NibLoadableView protocol is \(String(describing: self))")
        return String(describing: self)
    }
}

//very similar to reuse identifier we just did, but what we are doing here is this "NibLoadableView" so basically we can conform to this and where we have a nib(.xib) file we can actually use the name of the nib and instead have to keep up with the string, you do load nib name we'll just implement this
