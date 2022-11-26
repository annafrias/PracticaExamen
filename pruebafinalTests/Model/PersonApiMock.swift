//
//  PersonApiMock.swift
//  pruebafinalTests
//
//  Created by annaF on 26/11/22.
//

import Foundation
@testable import pruebafinal

struct PersonApiMock : PersonProtocol {
    
    var name: String
    
    var height: String
    
    var gender: genderEnum
    
    var homeworld: String
    
    init(name: String, height: String, gender: genderEnum, homeworld: String) {
        self.name = name
        self.height = height
        self.gender = gender
        self.homeworld = homeworld
    }
}

