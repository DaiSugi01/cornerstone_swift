//
//  HapticsMorseCodePlayer.swift
//  MorseCodeHaptics
//
//  Created by 杉原大貴 on 2021/02/03.
//

import Foundation
import CoreHaptics

class HapticsMorseCodePlayer: MorseCodePlayer {
    let hapticsEngine: CHHapticEngine

    init() throws {
        hapticsEngine = try CHHapticEngine()
        try hapticsEngine.start()
    }

    func play(message: MorseCodeMessage) throws {
        let events = hapticEvents(for: message)
        let pattern = try CHHapticPattern(events: events,
           parameters: [])
        let player = try hapticsEngine.makePlayer(with: pattern)
        try player.start(atTime: 0)
    }

    func hapticEvents(for message: MorseCodeMessage) ->
       [CHHapticEvent] {
        // TODO
        return []
    }
}
