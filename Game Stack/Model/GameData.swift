//
//  GameData.swift
//  Game Stack
//
//  Created by Agus Adi Pranata on 11/07/20.
//  Copyright © 2020 gusadi. All rights reserved.
//

import Foundation

struct GameData: Codable {
    let next: String?
    let previous: String?
    let results: [Results]
}

struct Results: Codable {
    let name: String
    let released: String
    let background_image: String
    let rating: Double
    let rating_top: Int
}
