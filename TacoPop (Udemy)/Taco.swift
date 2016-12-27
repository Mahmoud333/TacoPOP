//
//  Taco.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/22/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.

// Model For Data

import Foundation

//subject of value vs reference type comes in, this is perfect place to use struct instead of class. bec. we're going to have a bunch of tacos & none of them need to have references, when we pass them around we want to pass them as copies
//1st i will create enums to deal with different things with tacos

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtein: String {  //enum for protein meat
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2 //made of cheese
}

struct Taco {
    //we r puting all these "!" basically the way im going to set this up for this lesspn is to create a taco u must have all these properties.
    //otherwise u won't be able to initialize the taco
    
    fileprivate var _id: Int!
    fileprivate var _productName: String!
    fileprivate var _shellId: TacoShell!
    fileprivate var _proteinId: TacoProtein!
    fileprivate var _condimentId: TacoCondiment!
    
    //our accessour/assessors form
    
    var id: Int {
        if _id == nil {
            return 0
        }
        return _id
    }
    
    var productName: String {
        if _productName == nil {
           return ""
        }
        return _productName
    }
    
    var shellId: TacoShell {
        return _shellId
    }
    
    var proteinId: TacoProtein {
        return _proteinId
    }
    
    var condimentId: TacoCondiment {
        return _condimentId
    }
    
    //in structures u don't always have to have initialiser but in this case im going to provide one bec. we've got some checks we have to do
    init(id: Int, productName: String, shellId: Int, proteinId: Int, condimentId: Int) {
        
        self._id = id
        self._productName = productName

        //first thing to convert
        // Taco shell
        switch shellId {
        case 2:
            self._shellId = TacoShell.Corn
        default:
            self._shellId = TacoShell.Flour //case 1 & default
        }
        //outside passing in Int & then once taco's created it will have the value of enim
        
        // Taco protein
        switch proteinId {
        case 2:
            self._proteinId = TacoProtein.Chicken
        case 3:
            self._proteinId = TacoProtein.Brisket
        case 4:
            self._proteinId = TacoProtein.Fish
        default:
            self._proteinId = TacoProtein.Beef //case 1 & default
        }
        
        // Taco condiment
        switch condimentId {
        case 2:
            self._condimentId = TacoCondiment.Plain
        default:
            self._condimentId = TacoCondiment.Loaded //case 1 & default
        }
    }
    
   //gonna create data service and data service is going to be a way that we're going to access the data but its also gonna hold the data
    //normally i would use a data service to connect to an API or firebase or something like that and download the data that we're looking for in this case are our data service is just going to store the data too
    
}
