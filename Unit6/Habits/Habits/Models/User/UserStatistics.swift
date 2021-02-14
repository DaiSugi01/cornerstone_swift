//
//  UserStatistics.swift
//  Habits
//
//  Created by 杉原大貴 on 2021/02/14.
//

import Foundation

struct UserStatistics {
    let user: User
    let habitCounts: [HabitCount]
}

extension UserStatistics: Codable { }
