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
}
