//
//  SlotMachineViewModel.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import SwiftUI
import Combine

@MainActor
final class SlotMachineViewModel: ObservableObject {
    @Published private(set) var credits = 100
    @Published private(set) var bet = 5
    @Published private(set) var lastWin = 0
    @Published private(set) var results: [SlotSymbol] = [
        .cherry, .diamond, .seven
    ]
    @Published private var isSpinning = false
    @Published var winningSymbol: SlotSymbol?
    @Published var winAmount = 0
    @Published var showOutofCreditsAlert = false
    @Published var showWinningAlert = false
    @Published var winningSymbols: SlotSymbol?
    @Published var reels: [[SlotSymbol]] = [
        [.cherry, .lemon, .seven],
        [.bell, .star, .diamond],
        [.seven, .cherry, .bell]
    ]
    
    private let bets = [5, 10, 15]
    
    private let engine = GameEngine()
    
    /// Function to increse the Bet when
    func increaseBet() {
        guard
            !isSpinning
        else {
            return
        }
        
        guard
            let currentIndex = bets.firstIndex(of: bet)
        else {
            bet = bets[0]
            return
        }
        
        let nextIndex = (currentIndex + 1) % bets.count
        bet = bets[nextIndex]
    }
    
    /// Function to spin the symbols
    func spin() {
        guard
            !isSpinning
        else {
            return
        }
        
        guard
            bet > 0
        else {
            return
        }
        
        guard
            credits >= bet
        else {
            showOutofCreditsAlert = true
            return
        }
        
        let currentBet = bet
        
        isSpinning = true
        credits -= currentBet
        lastWin = 0
        
        reels = (0..<3).map { _ in
            (0..<3).map { _ in
                engine.randomSymbol()
            }
        }
        
        results = reels.map { $0[1] }
        
        Task { @MainActor in
            try? await Task.sleep(for: .seconds(2.5))
            
            let spinResults = results
            
            let payout = engine.calculatePayout(bet: currentBet, symbols: spinResults)
            
            lastWin = payout
            credits += payout
            
            if payout > 0,
                let firstSymbol = spinResults.first,
               spinResults.count == 3,
               spinResults.allSatisfy({ $0 == firstSymbol }) {
                
                winningSymbol = firstSymbol
                winAmount = payout
            }
            
            isSpinning = false
        }
    }
}
