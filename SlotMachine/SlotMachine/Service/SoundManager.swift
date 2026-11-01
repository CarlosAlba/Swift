//
//  SoundManager.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import AudioToolbox

final class SoundManager {
    static let shared = SoundManager()

    private init() {}

    func playSpin() {
        AudioServicesPlaySystemSound(1104)
    }

    func playWin() {
        AudioServicesPlaySystemSound(1025)
    }

    func playLose() {
        AudioServicesPlaySystemSound(1053)
    }
}
