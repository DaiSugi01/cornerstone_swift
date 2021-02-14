//
//  UserRequest.swift
//  Habits
//
//  Created by 杉原大貴 on 2021/02/14.
//

import Foundation

struct UserRequest: APIRequest {
    typealias Response = [String: User]
    
    var path: String { "/users" }
}
