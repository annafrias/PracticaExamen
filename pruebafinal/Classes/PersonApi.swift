//
//  PersonApi.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation

struct PersonAPI: PersonProtocol, Codable {
    var name: String
    var height: String
    var gender: genderEnum
    var homeworld: String
    
    
    enum CodingKeys: String, CodingKey {
        case name
        case height
        case gender
        case homeworld
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.height = try container.decode(String.self, forKey: .height)
        self.gender = try container.decode(genderEnum.self, forKey: .gender)
        self.homeworld = try container.decode(String.self, forKey: .homeworld)
    }
    

    
}
