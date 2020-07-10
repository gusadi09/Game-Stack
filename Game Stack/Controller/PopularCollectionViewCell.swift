//
//  PopularCollectionViewCell.swift
//  Game Stack
//
//  Created by Agus Adi Pranata on 10/07/20.
//  Copyright © 2020 gusadi. All rights reserved.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var popGameImage: UIImageView!
    @IBOutlet weak var popColl: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        popColl.layer.cornerRadius = 10
        popColl.layer.shadowColor = UIColor.black.cgColor
        popColl.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        popColl.layer.masksToBounds = false
        popColl.layer.shadowRadius = 3.0
        popColl.layer.shadowOpacity = 0.3
    }

}
