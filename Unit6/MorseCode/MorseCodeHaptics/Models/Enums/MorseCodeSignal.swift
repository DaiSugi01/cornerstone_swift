
import Foundation

enum MorseCodeSignal: String {
    case short = "."
    case long = "-"
}

extension MorseCodeSignal: MorseCodePlaybackEventRepresentable {
    var playbackEvents: [MorseCodePlaybackEvent] {
        switch self {
        case .short:
            return [.on(.morseCodeUnit)]
        case .long:
            return [.on(.morseCodeUnit * 3)]
        }
    }

    var components: [MorseCodePlaybackEventRepresentable] { [] }
    var componentSeparationDuration: TimeInterval { 0.0 }
}
