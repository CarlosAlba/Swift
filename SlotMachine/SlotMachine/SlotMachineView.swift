//
//  SlotMachineView.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import SwiftUI

struct SlotMachineView: View {
    @StateObject private var viewModel = SlotMachineViewModel()
    
    var body: some View {
        ZStack {
            Color(.black)
            
            SlotMachineBackground()
            
            VStack() {
                HStack(alignment: .center, spacing: 50) {
                    ForEach(viewModel.reels.indices, id: \.self) { index in
                        SlotReelView(
                            symbols: viewModel.reels[index],
                            isSpinning: viewModel.isSpinning,
                            stopDelay: Double(index) * 0.5
                        )
                    }
                }
                .offset(y: 25)
                
                HStack(spacing: 180) {
                    InfoElementView(title: "BET", value: viewModel.bet)
                    InfoElementView(title: "WIN", value: viewModel.lastWin)
                    InfoElementView(title: "CREDITS", value: viewModel.credits)
                }
                .offset(y: 35)
                
                HStack(spacing: 50) {
                    BetButton(bet: viewModel.bet) {
                        viewModel.increaseBet()
                    }
                    
                    PlayButton(imageName: "play") {
                        SoundManager.shared.playSpin()
                        viewModel.spin()
                    }
                    .offset(y: 35)
                    .disabled(viewModel.isSpinning)
                }
                .offset(x: -90)
            }
            .padding()
        }
        .alert(
            "Out of Credits",
            isPresented: $viewModel.showOutofCreditsAlert
        ) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("You don't have enough credits to spin")
        }
        .alert(
            "Congratulations",
            isPresented: $viewModel.showWinningAlert
        ) {
            Button("Awesome", role: .cancel) {}
        } message: {
            if let symbol = viewModel.winningSymbol {
                Text("Three \(symbol.imageName) symbols! You won \(viewModel.winAmount) credits!")
            }
        }
    }
}

#Preview(traits: .landscapeLeft) {
    SlotMachineView()
}
