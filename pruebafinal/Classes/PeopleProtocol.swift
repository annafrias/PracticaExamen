//
//  PeopleProtocol.swift
//  pruebafinal
//
//  Created by annaF on 26/11/22.
//

import Foundation


protocol PersonProtocol: Codable {
    
    var name: String {get set}
    var height: String {get set}
    var gender: genderEnum {get set}
    var homeworld: String {get set}

    
}

enum genderEnum: String, Codable{
      case male = "male"
      case female = "female"
      case na = "n/a"
      case unknown = "unknown"
      case hermaphrodite = "hermaphrodite"
      case none = "none"
}
