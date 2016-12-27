//
//  TacoCell.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/25/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.
//

import UIKit

//will load nib from file
class TacoCell: UICollectionViewCell {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    //we will also gonna pass taco too
    var taco: Taco!
    
    
    //the configuer method here
    func configuerCell(taco: Taco) {
        
        self.taco = taco
        
        //rawValue to take the string inside the enum
        tacoImage.image = UIImage(named: "\(taco.proteinId.rawValue)")
        tacoLabel.text = "\(taco.productName)"
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
