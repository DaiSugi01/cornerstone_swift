//
//  VisualMorseCodePlayerView.swift
//  MorseCodeHaptics
//
//  Created by 杉原大貴 on 2021/02/03.
//

import UIKit

class VisualMorseCodePlayerView: UIView {
}

extension VisualMorseCodePlayerView: MorseCodePlayer {
    func play(message: MorseCodeMessage) throws {
        for playbackEvent in message.playbackEvents {
            switch playbackEvent {
            case .on(let duration):
                Timer.scheduledTimer(withTimeInterval: duration, repeats: false, block: { timer in
                    self.backgroundColor = .white
                })
            case .off(let duration):
                Timer.scheduledTimer(withTimeInterval: duration, repeats: false, block: { timer in
                    self.backgroundColor = .black
                })
            }
        }
    }
}
