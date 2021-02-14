//
//  UserCount.swift
//  Habits
//
//  Created by 杉原大貴 on 2021/02/14.
//

import Foundation

struct UserCount {
    let uesr: User
    let count: Int
}

extension UserCount: Codable { }

extension UserCount: Hashable { }
