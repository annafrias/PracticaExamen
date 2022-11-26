//
//  ResponseApiProtocol.swift
//  pruebafinalTests
//
//  Created by annaF on 26/11/22.
//

import Foundation
@testable import pruebafinal

struct ResponseApiMock: ResponseProtocol {

    
    var count: Int
    
    var next: String?
    
    var previous: String?
    
    var results: [PersonAPI]
    
    
}
