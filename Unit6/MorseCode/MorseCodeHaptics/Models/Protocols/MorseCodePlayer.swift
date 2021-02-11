//
//  MorseCodePlayer.swift
//  MorseCodeHaptics
//
//  Created by 杉原大貴 on 2021/02/03.
//

import Foundation

protocol MorseCodePlayer {
    func play(message: MorseCodeMessage) throws
}
