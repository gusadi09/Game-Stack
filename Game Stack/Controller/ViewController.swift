//
//  ViewController.swift
//  Game Stack
//
//  Created by Agus Adi Pranata on 10/07/20.
//  Copyright © 2020 gusadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aboutButton: UIButton!
    @IBOutlet weak var gamesButton: UIButton!
    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var allGamesCollection: UICollectionView!
    @IBOutlet weak var mostPopCollection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do anletdditional setup after loading the view.
        
        UIBeautify()
        
        allGamesCollection.dataSource = self
        allGamesCollection.delegate = self
        
        allGamesCollection.register(UINib(nibName: "GameCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "gameCollection")
        
        mostPopCollection.dataSource = self
        mostPopCollection.delegate = self
        
        mostPopCollection.register(UINib(nibName: "PopularCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "popularCollection")
        
    }
    
    @IBAction func seeAllPressed(_ sender: UIButton) {
    }
    
    @IBAction func seeAllPopularPressed(_ sender: UIButton) {
    }
    
    @IBAction func tabPressed(_ sender: UIButton) {
    }
    
    func UIBeautify() {
        aboutButton.layer.shadowColor = UIColor.black.cgColor
        aboutButton.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        aboutButton.layer.masksToBounds = false
        aboutButton.layer.shadowRadius = 3.0
        aboutButton.layer.shadowOpacity = 0.3
        
        gamesButton.layer.cornerRadius = gamesButton.frame.height/2
        gamesButton.layer.shadowColor = UIColor.black.cgColor
        gamesButton.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        gamesButton.layer.masksToBounds = false
        gamesButton.layer.shadowRadius = 3.0
        gamesButton.layer.shadowOpacity = 0.3
        
        favButton.layer.cornerRadius = gamesButton.frame.height/2
        favButton.layer.shadowColor = UIColor.black.cgColor
        favButton.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        favButton.layer.masksToBounds = false
        favButton.layer.shadowRadius = 3.0
        favButton.layer.shadowOpacity = 0.3
        
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == mostPopCollection){
            return 3
        }
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = allGamesCollection.dequeueReusableCell(withReuseIdentifier: "gameCollection", for: indexPath) as! GameCollectionViewCell
        
        if (collectionView == mostPopCollection) {
            let cell2 = mostPopCollection.dequeueReusableCell(withReuseIdentifier: "popularCollection", for: indexPath) as! PopularCollectionViewCell
            
            return cell2
        }
        
        return cell
    }
    
}
