//
//  HabitLeadStatisticsRequest.swift
//  Habits
//
//  Created by 杉原大貴 on 2021/02/14.
//

import Foundation

struct HabitLeadStatisticsRequest: APIRequest {
    typealias Response = UserStatistics

    var userID: String

    var path: String { "/userLeadingStats/\(userID)" }
}
