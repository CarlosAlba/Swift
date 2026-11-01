//
//  SlotReelView.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import SwiftUI

struct SlotReelView: View {
    @StateObject private var slotMachine: SlotMachine

    let symbols: [SlotSymbol]
    let isSpinning: Bool
    let stopDelay: Double
    
    init(
        symbols: [SlotSymbol],
        isSpinning: Bool,
        stopDelay: Double
    ) {
        self.symbols = symbols
        self.isSpinning = isSpinning
        self.stopDelay = stopDelay

        _slotMachine = StateObject(
            wrappedValue: SlotMachine(symbols: symbols)
        )
    }
    
    var body: some View {
        VStack(spacing: 8) {
            ForEach(
                Array(slotMachine.displayedSymbols.enumerated()),
                id: \.offset
            ) { _, symbol in
                Image(symbol.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
            }
        }
        .padding(8)
        .onChange(of: isSpinning) { _, spinning in
            if spinning {
                slotMachine.startSpinning(
                    finalSymbols: symbols,
                    stopDelay: stopDelay
                )
            }
        }
        .onDisappear {
            slotMachine.cancelSpinning()
        }
    }
}
