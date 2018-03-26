//
//  ECParseGames.swift
//  EnvoyCodeTest
//
//  Created by Alfredo Alba on 12/7/17.
//  Copyright © 2017 Envoy. All rights reserved.
//

import UIKit

let apiKey = "nq033i1s4i5vgvu8q9pqot96ugl9dd"
let stringURL = "https://api.twitch.tv/kraken/games/top?limit=20"

class ECParseGames {

    let processingQueue = OperationQueue()
    
    func getGameSection(_ completion : @escaping (_ results: [ERGame]?, _ error : NSError?) -> Void){
        
        let url = NSURL(string: stringURL)
        let request = NSMutableURLRequest(url: url! as URL)
        
        request.setValue(apiKey, forHTTPHeaderField: "Client-ID")
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) -> Void in
            
            if let _ = error {
                let APIError = NSError(domain: "twitch.tv", code: 0, userInfo: [NSLocalizedFailureReasonErrorKey:"Invalid client id specified"])
                OperationQueue.main.addOperation({
                    completion(nil, APIError)
                })
                return
            }
            
            guard let _ = response as? HTTPURLResponse,
                let data = data else {
                    let APIError = NSError(domain: "twitch.tv", code: 0, userInfo: [NSLocalizedFailureReasonErrorKey:"Bad Response"])
                    OperationQueue.main.addOperation({
                        completion(nil, APIError)
                    })
                    return
            }
            
            do {
                guard let resultsDictionary = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions(rawValue: 0)) as? [String: AnyObject],
                let _ = resultsDictionary["top"] as? [[String: AnyObject]] else {
                        
                        let APIError = NSError(domain: "twitch.tv", code: 0, userInfo: [NSLocalizedFailureReasonErrorKey:"Unknown API response"])
                        OperationQueue.main.addOperation({
                            completion(nil, APIError)
                        })
                        return
                }
                
                let gamesReceived = resultsDictionary["top"] as? [[String: AnyObject]]
                
                var gamesResults = [ERGame]()
                
                for gameObject in gamesReceived! {
                    guard let gameResponse = gameObject["game"] as? [String: AnyObject] else {
                        break;
                    }
                    guard let gameTitle = gameResponse["name"] as? String,
                        let gameWatchers = gameObject["viewers"] as? Int,
                        let imageURL = gameResponse["box"]!["large"] as? String else {
                            break;
                    }
                    
                    let gameResult = ERGame(gameTitle: gameTitle, gameWatchers: gameWatchers, imageURL: imageURL)
                    
                    gamesResults.append(gameResult)
                }
                
                OperationQueue.main.addOperation({
                    completion(gamesResults, nil)
                })
                
            } catch _ {
                let APIError = NSError(domain: "twitch.tv", code: 0, userInfo: [NSLocalizedFailureReasonErrorKey:"Could not serialize"])
                OperationQueue.main.addOperation({
                    completion(nil, APIError)
                })
                return
            }
        } 
        .resume()
    }
    
}
