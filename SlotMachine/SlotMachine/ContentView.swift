//
//  ContentView.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = SlotMachineViewModel()
    
    var body: some View {
        ZStack {
            Color(.black)
            
            SlotMachineBackground()
            
            VStack(spacing: 100) {
                HStack(spacing: 150) {

                }
                
                HStack(spacing: 300) {
                    InfoElementView(title: "BET", value: viewModel.bet)
                    InfoElementView(title: "WIN", value: viewModel.lastWin)
                    InfoElementView(title: "CREDITS", value: viewModel.credits)
                }
                
                HStack() {
                    BetButton(bet: viewModel.bet) {
                        viewModel.increaseBet()
                    }
                    
                    PlayButton(imageName: "play") {
                        viewModel.spin()
                    }
                }
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
    ContentView()
}
