//
//  GameCollectionViewCell.swift
//  Game Stack
//
//  Created by Agus Adi Pranata on 10/07/20.
//  Copyright © 2020 gusadi. All rights reserved.
//

import UIKit

class GameCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var gameCollection: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        gameCollection.layer.cornerRadius = 10
        gameCollection.layer.shadowColor = UIColor.black.cgColor
        gameCollection.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        gameCollection.layer.masksToBounds = false
        gameCollection.layer.shadowRadius = 3.0
        gameCollection.layer.shadowOpacity = 0.3
    }

}
