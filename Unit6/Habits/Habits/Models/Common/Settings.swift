//
//  Setting.swift
//  Habits
//
//  Created by 杉原大貴 on 2021/02/13.
//

import Foundation

struct Settings {
    static var shared = Settings()
    
    private let defaults = UserDefaults.standard
    
    let currentUser = User(id: "activeUSer",
                           name: "Daiki Sugihara",
                           color: Color(
                            hue: 0.75707988194531695,
                            saturation: 0.81293901213002762,
                            brightness: 0.92267943863794188
                           ),
                           bio: "Hello"
    )
    
    enum Setting {
        static let favoriteHabits = "favoriteHabits"
        static let followedUserIDs = "followedUserIds"
    }
    
    private func archiveJSON<T: Encodable>(value: T, key: String) {
        let data = try! JSONEncoder().encode(value)
        let string = String(data: data, encoding: .utf8)
        defaults.set(string, forKey: key)
    }
    
    private func unarchiveJSON<T: Decodable>(key: String) -> T? {
        guard let string = defaults.string(forKey: key),
              let data = string.data(using: .utf8) else {
            return nil
        }
        return try! JSONDecoder().decode(T.self, from: data)
    }

    var favoriteHabits: [Habit] {
        get {
            unarchiveJSON(key: Setting.favoriteHabits) ?? []
        }
        set {
            archiveJSON(value: newValue, key: Setting.favoriteHabits)
        }
    }
    
    var followedUserIDs: [String] {
        get {
            unarchiveJSON(key: Setting.followedUserIDs) ?? []
        }
        set {
            archiveJSON(value: newValue, key: Setting.followedUserIDs)
        }
    }

    mutating func toggleFavorite(_ habit: Habit) {
        var favoites = favoriteHabits
        
        if favoites.contains(habit) {
            favoites = favoites.filter { $0 != habit}
        } else {
            favoites.append(habit)
        }
        
        favoriteHabits = favoites
    }
}
