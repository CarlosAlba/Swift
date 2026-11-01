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
                        print("bet increase")
                    }
                    
                    PlayButton(imageName: "play") {
                        print("Button pressed")
                    }
                }
            }
        }
    }
}

#Preview(traits: .landscapeLeft) {
    ContentView()
}
