//
//  ERGame.swift
//  EnvoyCodeTest
//
//  Created by Alfredo Alba on 12/7/17.
//  Copyright © 2017 Envoy. All rights reserved.
//

import Foundation

class ERGame {
    //MARK: Properties
    
    let gameTitle : String
    let gameWatchers : Int
    let imageURL : String
    
    //MARK: Initialization
    
    init (gameTitle:String, gameWatchers:Int, imageURL:String) {
        self.gameTitle    = gameTitle
        self.gameWatchers = gameWatchers
        self.imageURL     = imageURL
    }
}
