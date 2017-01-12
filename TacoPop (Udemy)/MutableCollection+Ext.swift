//
//  MutableCollection+Ext.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/27/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.
// Arrays,

import Foundation

extension MutableCollection where Index == Int {
   
    mutating func shuffle() {
        if count < 2 { return } //no need to shuffle 'less than 2'
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard i != j else { continue }
            swap(&self[i],&self[j])    //swap these
        }
    }
}

//only mutable collection that has an integer index are we going to extend it
//on any mutable collection where has integer index we should be able to shuffle that
