//
//  person.swift
//  CodeUteisUiKit
//
//  Created by ednardo alves on 19/12/24.
//

import Foundation


class PersonGenerator {
    
    var name: String
    var userLastName: Bool
    
    init (name: String, userLastName: Bool = false) {
        self.name = name
        self.userLastName = userLastName
    }
    
    func printName() -> String {
        
        if name == "" {
            name = "Ednardo"
        }
        
        return "\(name) \(userLastName ? " usando sobre sobrenome" : "")"
    }
}
