//  DropShadow.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/21/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.
//

//1- Make shadow under UIView
import UIKit


protocol DropShadow {}
//empty protocol, don't need to define anything in there

//its good to define requirements in ur protocol itself but dont need here
//define a protocol and implement functionality in the extension

extension DropShadow where Self: UIView{ //extension DropShadow where self is UIView (when u deal with extensions & protocols its "Self" not "self")
   
    //u can constrain ur extension to a certian type, 
    //we do in generics how u constrained a cetrain protocol in a protocol extension can constrain that protocol to a certain type
    
    func addDropShadow(){
        // implementation
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
    //all we need to do here
}
