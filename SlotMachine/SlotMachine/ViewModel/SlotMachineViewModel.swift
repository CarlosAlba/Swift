//
//  SlotMachineViewModel.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import SwiftUI
import Combine

class SlotMachineViewModel: ObservableObject {
    @Published private(set) var credits = 100
    @Published private(set) var bet = 5
    @Published private(set) var lastWin = 0
    @Published private(set) var results: [SlotSymbol] = [
        .cherry, .diamond, .seven
    ]
    
    @Published var winningSymbol: SlotSymbol?
    @Published var winAmount = 0
    @Published var showOutofCreditsAlert = false
    @Published var showWinningAlert = false
    @Published var winningSymbols: SlotSymbol?
    
    private let bets = [5, 10, 15]
    
    private let engine = GameEngine()
}
