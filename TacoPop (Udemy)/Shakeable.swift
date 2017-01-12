//
//  Shakeable.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/27/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.
//

import UIKit

//for for our cell view
protocol Shakeable {
}

extension Shakeable where Self: UIView {
    func shake() {
        let anim = CABasicAnimation(keyPath: "position")
        anim.duration = 0.05
        anim.repeatCount = 5
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0 , y: self.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(anim, forKey: "position")
    }
}

//now any UIView can shake like this even our Header view if we want
