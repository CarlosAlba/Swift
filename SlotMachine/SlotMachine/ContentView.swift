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
                    VStack(spacing: 20) {
                        Image("cherry")
                        Image("cherry")
                        Image("cherry")
                    }
                    VStack(spacing: 20) {
                        Image("cherry")
                        Image("cherry")
                        Image("cherry")
                    }
                    VStack(spacing: 20) {
                        Image("cherry")
                        Image("cherry")
                        Image("cherry")
                    }
                }
                
                HStack(spacing: 300) {
                    InfoElementView(title: "BET", value: 0)
                    InfoElementView(title: "WIN", value: 0)
                    InfoElementView(title: "CREDITS", value: 0)
                }
                
                PlayButton(imageName: "play") {
                    print("Button pressed")
                }
            }
        }
    }
}

#Preview(traits: .landscapeLeft) {
    ContentView()
}
