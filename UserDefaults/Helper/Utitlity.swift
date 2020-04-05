//
//  Utitlity.swift
//  UserDefaults
//
//  Created by sahil pathania on 29/03/20.
//  Copyright © 2020 sahil pathania. All rights reserved.
//

import Foundation
class Utitlity: UserDefaults {
    static let sharedInstantce = Utitlity()
    
     let kUsername = "kUsername"
     let kPassword = "kPassword"
    
    func setUsername(username : String) {
        setValue(username, forKey: kUsername)
    }
    func setPassword(password : String) {
        setValue(password, forKey: kPassword)
    }
    func getUsername() -> String {
        return value(forKey: kUsername) as? String ?? ""
    }
    func getPassword() -> String {
        return value(forKey: kPassword) as? String ?? ""
    }
}
