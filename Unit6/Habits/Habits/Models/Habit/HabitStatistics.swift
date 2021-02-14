//
//  HabitStatistics.swift
//  Habits
//
//  Created by 杉原大貴 on 2021/02/14.
//

import Foundation

struct HabitStatistics {
    let habit: Habit
    let userCounts: [UserCount]
}

extension HabitStatistics: Codable { }
