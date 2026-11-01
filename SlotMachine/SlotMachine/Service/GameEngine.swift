//
//  GameEngine.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//
/*
 GameEngine file where we can add all the logic in base of the game rules, bets, credit, calculations
 
 */

struct GameEngine {
    
    /// Function generating random symbols in base of the casses in the SlotSymbol
    /// - Returns: Symbol from the calculation
    func randomSymbol() -> SlotSymbol {
        let symbols = SlotSymbol.allCases
        let totalWeight = symbols.reduce(0) {
            $0 + $1.weight
        }
        
        let random = Int.random(in: 0..<totalWeight)
        var cumulativeWeight = 0
        
        for symbol in symbols {
            cumulativeWeight += symbol.weight
            
            if random < cumulativeWeight {
                return symbol
            }
        }
        
        return .diamond
    }
    
    
    /// Function calculating 3 symbols and the payout if match
    /// - Parameter symbols: Array of 3 symbols
    /// - Returns: Calculation of the payout if 3 symbols match and 0 if not
    func calculateMultiplier(symbols: [SlotSymbol]) -> Int {
        guard
            symbols.count == 3
        else {
            return 0
        }
        
        if symbols.allSatisfy({ $0 == symbols[0] }) {
            return symbols[0].payout
        }
        
        return 0
    }
    
    
    /// Function calculating the bet with the payout
    /// - Parameters:
    ///   - bet: 5, 10 or 15
    ///   - symbols: Array of 3 symbols
    /// - Returns: Bet and Payout calculation
    func calculatePayout(bet: Int, symbols: [SlotSymbol]) -> Int {
        guard
            bet > 0
        else {
            return 0
        }
        
        return bet * calculateMultiplier(symbols: symbols)
    }
}
