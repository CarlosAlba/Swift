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
    
    @Published private var winningSymbol: SlotSymbol?
    @Published private var winAmount = 0
    
    private let bets = [5, 10, 15]
}
