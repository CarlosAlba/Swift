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
            
            Image("reels-background")
                .resizable()
                .scaledToFit()
            
            VStack(spacing: 100) {
                HStack(spacing: 150) {
                    VStack(spacing: 20) {
                        Image("slot-cherries")
                        Image("slot-cherries")
                        Image("slot-cherries")
                    }
                    VStack(spacing: 20) {
                        Image("slot-cherries")
                        Image("slot-cherries")
                        Image("slot-cherries")
                    }
                    VStack(spacing: 20) {
                        Image("slot-cherries")
                        Image("slot-cherries")
                        Image("slot-cherries")
                    }
                }
                
                HStack(spacing: 300) {
                    VStack(spacing: 20) {
                        Text("BET")
                            .font(.headline)
                            .foregroundColor(.yellow)
                        Text("0")
                            .font(.headline)
                            .foregroundColor(.yellow)
                    }
                    
                    VStack(spacing: 20) {
                        Text("WIN")
                            .font(.headline)
                            .foregroundColor(.yellow)
                        Text("0")
                            .font(.headline)
                            .foregroundColor(.yellow)
                    }
                    
                    VStack(spacing: 20) {
                        Text("CREDITS")
                            .font(.headline)
                            .foregroundColor(.yellow)
                        Text("0")
                            .font(.headline)
                            .foregroundColor(.yellow)
                    }
                }
                
                Button("PLAY") {
                    print("Playing!")
                }
            }
        }
    }
}

#Preview(traits: .landscapeLeft) {
    ContentView()
}
