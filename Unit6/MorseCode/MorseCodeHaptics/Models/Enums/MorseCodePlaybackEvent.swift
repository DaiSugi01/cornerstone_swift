//
//  MorseCodePlaybackEvent.swift
//  MorseCodeHaptics
//
//  Created by 杉原大貴 on 2021/02/03.
//

import Foundation

enum MorseCodePlaybackEvent {
    case on(TimeInterval)
    case off(TimeInterval)
    
    var duration: TimeInterval {
        switch self {
        case .on(let duration):
            return duration
        case .off(let duration):
            return duration
        }
    }
}
