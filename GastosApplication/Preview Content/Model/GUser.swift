//
//  GUser.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/24/21.
//

import Foundation

struct GUser: Identifiable {
    
    var id: String = UUID().uuidString
    
    var name: String?
    
    var lastName: String?
    
    var email: String?
    
    var birth: String?
    
    enum Gender: String {
        case male
        case female
    }
    
    var hasRefer: Bool?
    
    var refferal: Int?
    
    var dictionary: [String: Any] {
        return ["id" : id,
                "name" : name,
                "lastName" : lastName,
                "email" : email,
                "birth" : birth,
                "gender" : Gender.RawValue(),
                "hasrefer" : hasRefer,
                "refferal" : refferal]
    }
}
