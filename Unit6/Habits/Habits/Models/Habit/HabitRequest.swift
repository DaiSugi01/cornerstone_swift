//
//  HabitRequest.swift
//  Habits
//
//  Created by 杉原大貴 on 2021/02/12.
//

import Foundation

struct HabitRequest: APIRequest {
    typealias Response = [String: Habit]
    
    var habitName: String?
    
    var path: String { "/habits" }
}
