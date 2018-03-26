//
//  ECGamesCollectionViewCell.swift
//  EnvoyCodeTest
//
//  Created by Alfredo Alba on 12/7/17.
//  Copyright © 2017 Envoy. All rights reserved.
//

import UIKit

class ECGamesCollectionViewCell: UICollectionViewCell {

    //MARK: Properties
    
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var gameWatchs: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
