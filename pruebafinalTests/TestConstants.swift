//
//  TestConstants.swift
//  pruebafinalTests
//
//  Created by annaF on 26/11/22.
//

import Foundation
@testable import pruebafinal

struct TestConstants {
    static let serviceApiMock: ServiceApiMock = ServiceApiMock()
    static let personMock = PersonApiMock(name: "a", height: "12", gender: .female, homeworld: "qq")
    static let personsMock = [personMock]
    static let responseApiMock = ResponseApiMock(count: 3, next: "ss", previous: "sss", results: personsMock )
    
     
    
}

 
