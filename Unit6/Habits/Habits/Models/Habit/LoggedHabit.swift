//
//  LoggedHabit.swift
//  Habits
//
//  Created by 杉原大貴 on 2021/02/15.
//

import Foundation

struct LoggedHabit {
    let userID: String
    let habitName: String
    let timestamp: Date
}

extension LoggedHabit: Codable { }
