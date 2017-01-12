//
//  MainVC.swift
//  TacoPop (Udemy)
//
//  Created by Mahmoud Hamad on 12/21/16.
//  Copyright © 2016 Mahmoud SMGL. All rights reserved.
//

import UIKit

class MainVC: UIViewController,DataServiceDelegate {
    //the delegate so we can know that it finished
    
    
    
    @IBOutlet weak var headerView: ViewHeader!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //variable for data service, the way to call the singleton
    var ds: DataService = DataService.instance
    //now i can refer to it in this file, this instance just as variable ds
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //start activity spiner here
        
        
        ds.delegate = self
        //that delegate protocol that u will find in our data service, that way we wil get notified as soon as that data is done downloading, it will fire that function
        ds.loadDeliciousTacoData() //loaded
        ds.tacoArray.shuffle() //array confirms to mutablecollection
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        headerView.addDropShadow() //ours in protocol exten
        
        //load our nib
        /*
        let nib = UINib(nibName: "TacoCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        */
        collectionView.register(TacoCell.self) //dont have to use those identifiers everywhere & nib name
        
        headerView.shake()
    }

    func deliciousTacoDataLoaded() {
        print("Delicious Taco Data Loaded")
        //we can make spinner stop if we had it
        
        collectionView.reloadData() //if connected to firebase or api do it or in async call
    }

}


//set our methods for our delegates & datasource for collection view
extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count //connected to our data service instance
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        /*
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configuerCell(taco: ds.tacoArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
         */

        //new way bec. of protocols
        
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configuerCell(taco: ds.tacoArray[indexPath.row])
        return cell
        //dequeueReusableCell wil return property dequeue cell or cell (fatalerror), didn't have to use reuseindentifier
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 104.0, height: 98.0)
    }
    
    
}

