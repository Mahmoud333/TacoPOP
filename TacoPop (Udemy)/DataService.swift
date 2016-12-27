//
//  DataService.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/24/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.
// singleton class

import Foundation

protocol DataServiceDelegate: class { //u can limit protocol to a certain type
    //our delegate func
    func deliciousTacoDataLoaded() //our only requirment
}


// Create/Implement the data model or data service
// the reason im using class here is because it will be singleton

class DataService {
    
    //need to do static
    static let instance = DataService()
    
    //what singledon let us do is there's only one instace that lives throughout your whole app, so u can refer to this data service from anywhere and execute functions or access data or whatever, this is a perfect kind of thing for singleton.
    
    
    weak var delegate: DataServiceDelegate?
    //optional bec. we may or may not have one "not always have one"
    
    
    
    //first thing we need (array of tacos and it will be empty)
    
    var tacoArray: Array<Taco> = []
    
    
    //appending to the taco right one taco at the time and if u remember from our enms we had there's a shellID & proteinID & condimentID and depening on what these Int are they will set it up when u create a taco
    
    //Thats all we need except our delegate
    func loadDeliciousTacoData() {
        // 4 Chicken Tacos with diff. combinations
        tacoArray.append(Taco(id: 1, productName: "Loaded Flour Chicken Taco", shellId: 1, proteinId: 2, condimentId: 1))
        tacoArray.append(Taco(id: 2, productName: "Loaded Corn Chicken Taco", shellId: 2, proteinId: 2, condimentId: 1))
        tacoArray.append(Taco(id: 3, productName: "Plain Flour Chicken Taco", shellId: 1, proteinId: 2, condimentId: 2))
        tacoArray.append(Taco(id: 4, productName: "Plain Corn Chicken Taco", shellId: 2, proteinId: 2, condimentId: 2))
        
        // Beef Tacos
        tacoArray.append(Taco(id: 5, productName: "Loaded Flour Beef Taco", shellId: 1, proteinId: 1, condimentId: 1))
        tacoArray.append(Taco(id: 6, productName: "Loaded Corn Beef Taco", shellId: 2, proteinId: 1, condimentId: 1))
        tacoArray.append(Taco(id: 7, productName: "Plain Flour Beef Taco", shellId: 1, proteinId: 1, condimentId: 2))
        tacoArray.append(Taco(id: 8, productName: "Plain Corn Beef Taco", shellId: 2, proteinId: 1, condimentId: 2))
        
        // Brisket Tacos
        tacoArray.append(Taco(id: 9, productName: "Loaded Flour Brisket Taco", shellId: 1, proteinId: 3, condimentId: 1))
        tacoArray.append(Taco(id: 10, productName: "Loaded Corn Brisket Taco", shellId: 1, proteinId: 3, condimentId: 1))
        tacoArray.append(Taco(id: 11, productName: "Plain Flour Brisket Taco", shellId: 1, proteinId: 3, condimentId: 1))
        tacoArray.append(Taco(id: 12, productName: "Plain corn Brisket Taco", shellId: 1, proteinId: 3, condimentId: 1))
        
        // Fish Tacos
        tacoArray.append(Taco(id: 13, productName: "Loaded Flour Fish Taco", shellId: 1, proteinId: 4, condimentId: 1))
        
        tacoArray.append(Taco(id: 14, productName: "Loaded Corn Fish Taco", shellId: 2, proteinId: 4, condimentId: 1))
        
        tacoArray.append(Taco(id: 15, productName: "Plain Flour Fish Taco", shellId: 1, proteinId: 4, condimentId: 2))
        
        tacoArray.append(Taco(id: 16, productName: "Plain Corn Fish Taco", shellId: 2, proteinId: 4, condimentId: 2))
    
        
        //when we reach this point all our data is loaded
        //so we will fire our delegate method, any other code that conforms to that data service delegate protocol any time this is loaded this func will be fired in, it'll get notified and u can even do things
        delegate?.deliciousTacoDataLoaded()
        
        
        //& u can even pass data through like i could pass in our delegate method say "service: DataService" of type dataService & then u could pass an actual reference back to this data service
        //in this case all we're able to do is get notified that taco data got loaded
    
    }
    
    
}
