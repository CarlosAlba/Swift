//
//  ECGamesCollectionViewController.swift
//  EnvoyCodeTest
//
//  Created by Alfredo Alba on 12/6/17.
//  Copyright © 2017 Envoy. All rights reserved.
//

import UIKit

class ECGamesCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    // MARK: - Properties
    
    private let reuseIdentifier = "cellId"
    private let parse = ECParseGames()
    private var gamesResults = [ERGame]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // getting the information online
        parse.getGameSection { ( result , error) in
            self.gamesResults = result!
            
            self.collectionView?.reloadData()
        }
        
        // Register cell classes
        self.collectionView!.register(UINib(nibName: "ECGamesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.gamesResults.count
    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ECGamesCollectionViewCell
    
        // Configure the cell
        cell.gameTitle.text = self.gamesResults[indexPath.row].gameTitle
        cell.gameWatchs.text = "\(self.gamesResults[indexPath.row].gameWatchers) watching"
        cell.gameImage.setImageWith(URL(string:self.gamesResults[indexPath.row].imageURL)!)
    
        return cell
    }

    // MARK: UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width/3) - 15, height: (view.frame.height/3) - (self.navigationController?.navigationBar.intrinsicContentSize.height)!)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(15, 15, 0, 15); //UIEdgeInsetsMake(topMargin, left, bottom, right);
    }

    // MARK: inter-spacing
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 6.0
    }
}
