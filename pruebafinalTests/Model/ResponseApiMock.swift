//
//  ResponseApiProtocol.swift
//  pruebafinalTests
//
//  Created by annaF on 26/11/22.
//

import Foundation
@testable import pruebafinal

struct ResponseApiMock {
    var count: Int
    
    var next: String?
    
    var previous: String?
    
    //esto no se yo si esta bien
    var results: [PersonProtocol]
    
    
}
