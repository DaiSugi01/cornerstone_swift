//
//  MorseCodePlaybackEventRepresentable.swift
//  MorseCodeHaptics
//
//  Created by 杉原大貴 on 2021/02/03.
//

import Foundation

protocol MorseCodePlaybackEventRepresentable {
    var playbackEvents: [MorseCodePlaybackEvent] { get }
    var components: [MorseCodePlaybackEventRepresentable] { get }
    var componentSeparationDuration: TimeInterval { get }
}

extension TimeInterval {
    static let morseCodeUnit: TimeInterval = 0.2
}

extension MorseCodePlaybackEventRepresentable {
    var playbackEvents: [MorseCodePlaybackEvent] {
        components.flatMap { component in
            component.playbackEvents +
               [.off(componentSeparationDuration)]
        }
    }
}
